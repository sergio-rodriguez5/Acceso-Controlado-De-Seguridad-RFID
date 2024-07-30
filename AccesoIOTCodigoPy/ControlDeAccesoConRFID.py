import RPi.GPIO as GPIO
import mysql.connector
import random
import time
from paho.mqtt import client as mqtt_client
import json
from mfrc522 import SimpleMFRC522

# Conexión a la base de datos
conexion = mysql.connector.connect(host="localhost", user="SergioDB", passwd="SergioSQL", database="autoIOT")

cursor = conexion.cursor()

# Variables y constantes
broker = '127.0.0.1'
port = 1883
topic = "codigoIoT/ejemplo/ID"
client_id = f'python-mqtt-{random.randint(0, 1000)}'

ledVerde = 7
ledRojo = 37
servoPIN1 = 11
servoPIN2 = 12
GPIO.setmode(GPIO.BOARD)
GPIO.setup(ledVerde, GPIO.OUT)
GPIO.output(ledVerde, GPIO.LOW)
GPIO.setup(ledRojo, GPIO.OUT)
GPIO.output(ledRojo, GPIO.LOW)
GPIO.setup(servoPIN1, GPIO.OUT)
GPIO.setup(servoPIN2, GPIO.OUT)
reader = SimpleMFRC522()

# Conexión al Broker MQTT
def connect_mqtt():
   def on_connect(client, userdata, flags, rc):
       if rc == 0:
           print("Connected to MQTT Broker!")
       else:
           print("Failed to connect, return code %d\n", rc)
   client = mqtt_client.Client(client_id)
   client.on_connect = on_connect
   client.connect(broker, port)
   return client

# Publicador
def publish2(client, mensaje):
   msg = mensaje
   result = client.publish(topic, msg)
   status = result[0]
   if status == 0:
        print(f"Send `{msg}` to topic `{topic}`")
   else:
        print(f"Failed to send message to topic {topic}")
client = connect_mqtt()
client.loop_start()
p1 = GPIO.PWM(servoPIN1, 50) # GPIO 11 for PWM with 50Hz
p1.start(0) # Initialization

p2 = GPIO.PWM(servoPIN2, 50) # GPIO 12 for PWM with 50Hz
p2.start(0)

try:
 while True:
   print("---------Leyendo Tarjeta:--------------")
   id, text = reader.read()
   print(f"ID leido: {id}")#
   cursor.execute("SELECT * FROM Registro_personal WHERE id_registro = "+str(id)+"")
   Datos = cursor.fetchone()
   print("Datos obtenidos", Datos)
   
   if Datos:
     print("Estas autorizado")
     acceso = "Autorizado"
     #GPIO.output(ledVerde, GPIO.HIGH)
     #time.sleep(5)
     #p.ChangeDutyCycle(5)
     #time.sleep(5)
     #p.ChangeDutyCycle(8)
     #GPIO.output(ledVerde, GPIO.LOW)#
     
     cursor.execute("SELECT Hora_salida FROM Bitacora WHERE id_registro = "+str(id)+" AND Hora_salida IS NULL")
     fila2 = cursor.fetchone()
     print(f"Hora de salida encontrada: {fila2}")#
     if fila2==None:
       print("si")
       cursor.execute("INSERT INTO Bitacora (id_registro, Hora_entrada, Fecha) VALUES ("+str(id)+", CURRENT_TIME(),CURRENT_DATE());")
       print("Se inserto dato")
       conexion.commit()
       GPIO.output(ledVerde, GPIO.HIGH)
       time.sleep(5)
       p1.ChangeDutyCycle(5)
       time.sleep(5)
       p1.ChangeDutyCycle(8)
       GPIO.output(ledVerde, GPIO.LOW)

       print("Enviando mensaje")
       obj = {"id_Registro": id, "Acceso": acceso, "datos": str(Datos)}
       json_view = json.dumps(obj, indent=1)
       publish2(client, json_view)
       print("mensaje Enviado!")
     elif fila2[0]!=None:
       print("si")
       cursor.execute("INSERT INTO Bitacora (id_registro, Hora_entrada, Fecha) VALUES ("+str(id)+", CURRENT_TIME(),CURRENT_DATE());")
       print("Se inserto dato")
       conexion.commit()
       GPIO.output(ledVerde, GPIO.HIGH)
       time.sleep(5)
       p1.ChangeDutyCycle(5)
       time.sleep(5)
       p1.ChangeDutyCycle(8)
       GPIO.output(ledVerde, GPIO.LOW)

       print("Enviando mensaje")
       obj = {"id_Registro": id, "Acceso": acceso, "datos": str(Datos)}
       json_view = json.dumps(obj, indent=1)
       publish2(client, json_view)
       print("mensaje Enviado!")
     else:
       print("UPDATE Bitacora SET Hora_salida = CURRENT_TIME() WHERE id_registro = "+str(id)+" AND Hora_salida IS NULL")
       cursor.execute("UPDATE Bitacora SET Hora_salida = CURRENT_TIME() WHERE id_registro = "+str(id)+" AND Hora_salida IS NULL;")
       
       print("Se actualizo dato")
       conexion.commit()

       GPIO.output(ledVerde, GPIO.HIGH)
       time.sleep(5)
       p2.ChangeDutyCycle(5)
       time.sleep(5)
       p2.ChangeDutyCycle(8)
       GPIO.output(ledVerde, GPIO.LOW)#

       print("Enviando mensaje")
       obj = {"id_Registro": id, "Acceso": acceso, "datos": str(Datos)}
       json_view = json.dumps(obj, indent=1)
       publish2(client, json_view)
       print("mensaje Enviado!")
   else:
       print("Acceso Denegado")
       acceso = "Denegado"
       GPIO.output(ledRojo, GPIO.HIGH)
       time.sleep(5)
       GPIO.output(ledRojo, GPIO.LOW)
       with open("datos.txt", "w") as archi1:
         archi1.write(str(id))

except KeyboardInterrupt:
 GPIO.cleanup()
 exit()
finally:
 if conexion.is_connected():
   cursor.close()
   conexion.close()

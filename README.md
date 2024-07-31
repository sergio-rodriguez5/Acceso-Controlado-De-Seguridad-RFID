# Proyecto IOT
# Acceso-Controlado-De-Seguridad-RFID
Descripcion: El proyecto consiste en la implementación de un sistema IoT para un acceso controlado de transporte. Se utilizan sensores RFID. Los datos se enviará instantáneamente al vigilante o encargado a través de Telegram, y se almacenará en una base de datos para su cotejo. Administración y gestión de los registros de entrada y salida de cada usuario

Aplicaciones: Control de entradas y salidas de vehículos. Entradas a estacionamientos universitarios de diferentes unidades académicas. Empresas, organismos y asociaciones.

Objetivo general:	

Objetivos específicos:	

Justificación:	

## Datos de las vesiones utilizadas en este proyecto:

+ Node-RED version: v3.0.2

+ Node.js  version: v16.20.0

+ Computadora con virtualización de Linux 5.15.0-73-generic x64 LE

+ Mqtt 5.0

+ Python 3.8.8

## Bot Telegram
<a href="https://ibb.co/0nF9TLp"><img src="https://i.ibb.co/Fh0Y21k/Flujo-Node-Red-RFID.png" alt="Flujo-Node-Red-RFID" border="0" /></a> 


La ubicación del código python para utilisar el sensor RFID y los servomotores se encuentran en la carpeta AccesoIOTCodigoPy/

La ubicación del dump para la base de datos en MariaDB la puedes encontar en la carpeta AutoIOTBaseDeDatos/

El json del flujo de Node-Red se encuentra en la carpeta RFIDTelegramJSON/

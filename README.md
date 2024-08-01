# Proyecto IOT
# Acceso-Controlado-De-Seguridad-RFID
Descripcion: El proyecto consiste en la implementación de un sistema IoT para un acceso controlado de transporte. Se utilizan sensores RFID. Los datos se enviará instantáneamente al vigilante o encargado a través de Telegram, y se almacenará en una base de datos para su cotejo. Administración y gestión de los registros de entrada y salida de cada usuario

Aplicaciones: Control de entradas y salidas de vehículos. Entradas a estacionamientos universitarios de diferentes unidades académicas. Empresas, organismos y asociaciones.

Objetivo general: Desarrollar un sistema IoT que automatice el acceso a estacionamientos utilizando una tarjeta inteligente RFID y que permita emplear el sistema de mensajería MQTT y Telegram para notificar a los usuarios sobre el ingreso y salida del estacionamiento y alertar a la caseta de vigilancia acerca de los usuarios registrados y no registrados para mejorar la seguridad y eficiencia en la gestión en el acceso de los automóviles a los estacionamientos de la universidad. 	

Objetivos específicos:	Sociales: 

Objetivo 1. Proporcionar un entorno más seguro: La implementación de vigilancia automatizada en la entrada y salida de vehículos contribuirá a un entorno más seguro para los universitarios y usuarios del estacionamiento. Esto reducirá el riesgo de incidentes relacionados con la seguridad y mejorará la protección general del área. 

 

Industriales: 

Objetivo 2. Reducir el tiempo y esfuerzo del personal de vigilancia: La automatización del registro y monitoreo de vehículos permitirá reducir significativamente el tiempo y esfuerzo requerido del personal de vigilancia. Esto optimiza los recursos humanos y permite una gestión más eficiente del estacionamiento. 

 

Técnicos: 

Objetivo 3. Integrar un sistema de control de acceso eficiente: Utilizando mensajería MQTT y Telegram, el sistema notificará a los usuarios sobre el ingreso y salida del estacionamiento y alertará a la caseta de vigilancia sobre los usuarios registrados y no registrados. La verificación de datos mediante tarjetas inteligentes RFID y el uso de una base de datos MySQL permitirán una gestión y almacenamiento eficiente de la información, asegurando la integridad y disponibilidad de los datos. 

 

Objetivo 4. Desarrollar un sistema de registro rápido y eficiente: La integración de una tarjeta inteligente RFID permitirá un registro rápido y preciso de los vehículos, mientras que el sistema de confirmación de acceso y salida facilitará la experiencia del usuario, haciéndola más ágil y libre de inconvenientes. 

Justificación:	En el contexto de los estacionamientos universitarios y corporativos, el control eficiente de acceso es crucial para garantizar la seguridad y optimizar la gestión del espacio. Los sistemas actuales suelen presentar limitaciones en seguridad, eficiencia y facilidad de uso. La implementación de un sistema IoT avanzado ofrece una solución integral que aborda estos desafíos mediante la automatización y la integración de tecnologías modernas. 

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

Este proyecto fue realizado en el marco del curso IoT Essentials Developer impartido por [Codigo IoT ](https://www.codigoiot.com/) y organizado por la [Asociación Mexicana del Internet de las Cosas](https://www.asociacioniot.org/).

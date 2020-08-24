# graphql-test-karate

Proyecto de pruebas de integracion con Karate Framework para una API Graphql

**Tabla de Contenido**

[TOC]

##Graphql
Es un lenguaje de consulta para su API y un tiempo de ejecución del lado del servidor para ejecutar consultas utilizando un sistema de tipos que defina para sus datos.

Para más información visitar la página: https://graphql.org/learn/
##Karate
Karate es una herramienta de código abierto, que nos permite realizar pruebas a APIS expuestas, pruebas de rendimiento e incluso automatización de pruebas.

En el siguiente repo se encuentra información mas detallada del framework y ejemplo de su uso:

https://github.com/intuit/karate

##API Insumo para ejecución
Se utiliza de insumo la api expuesta https://graphql-weather-api.herokuapp.com/, la cual se encuentra en ejecución online. Si es requerido se pueden utilizar y experimentar otras API públicas tipo graphql: http://apis.guru/graphql-apis/

##Ejecución
Para ejecutar las pruebas, ejecutamos el comando `gradlew clean test -i`

##Reportes
El reporte de cucumber se genera en la carpeta target
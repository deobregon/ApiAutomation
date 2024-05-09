# Testing API REST

## Complementos
|**Intellij**|**Java**|**Gradle**| 
| :----: | :----: | :----: |
|[<img width="50" height="50" src="https://cdn.iconscout.com/icon/free/png-128/intellij-idea-569199.png">](https://www.jetbrains.com/es-es/idea/download/#section=windows)|[<img height="60" src="https://www.oracle.com/a/ocom/img/cb71-java-logo.png">](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)|[<img height="50" src="https://gradle.org/images/gradle-knowledge-graph-logo.png?20170228">](https://gradle.org/releases/)|


## Pre-requisitos

1. Descargar Gradle y descomprimirlo. Agregar el path a la variable de entorno
2. IDE IntelliJ IDEA
3. Java 11

> **NOTA**:
> * Una vez instalado Intellij, se requiere instalar los plugins de Gherkin y Cucumber. (*[Guia de instalación plugins en intellij](https://www.jetbrains.com/help/idea/managing-plugins.html)*)

## Ejecución local

Para ejecutar el escenario:

Diríjase al path :

```bash
src\test\java\features\petStore\
```
En el archivo **pet.feature** Dar Click derecho y ejecutar la opción > Run 'Feature: pet'

## Reporte
Luego de realizar la ejecución podemos revisar el reporte  **karate-summary.html** que se encuentra en el siguiente path:
```bash
PracticaPetStore\build\karate-reports\karate-summary.html
```

> **NOTA**:
> * Para ejecutar el proyecto se necesita Java JDK 11 y Gradle con la versión 7.3.3 o superior.
> * Para poder instalar gradle en windows podemos seguir el siguiente tutorial https://www.geeksforgeeks.org/how-to-install-gradle-on-windows/.
> * Luego de la ejecucion de pruebas, los reportes se generan en la carpeta **build/karate-reports/**, y el archivo de resumen es el **karate-summary.html**

## Construido con:
La automatización fue desarrollada con:

* BDD - Estrategia de desarrollo
* Gradle - Manejador de dependencias
* Gherkin - Lenguaje Business Readable DSL (Lenguaje especifico de dominio legible por el negocio)

## Documentacion

[Karate DSL](https://github.com/karatelabs/karate)

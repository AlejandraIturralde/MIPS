# Mini proyecto 01 — Reparto de caramelos en MIPS

## Integrantes

- Alejandra Iturralde
- Nathaly Ycaza

## Objetivo

Aplicar instrucciones de acceso a memoria, operaciones aritméticas y comparación en lenguaje ensamblador MIPS mediante un escenario de reparto de caramelos.

## Descripción

El programa reparte 50 caramelos entre 6 niños. Calcula cuántos caramelos enteros recibe cada niño y cuántos sobran, almacena los resultados en memoria y muestra un mensaje según el sobrante.

## Versiones

- **Versión base:** carga los datos, calcula el cociente y el residuo, y almacena ambos resultados.
- **Versión final:** agrega una comparación del residuo con cero y muestra un mensaje que indica si sobraron caramelos.

## Instrucciones utilizadas

- `lw`: carga datos desde memoria hacia los registros.
- `div`: calcula la división entera.
- `rem`: calcula el residuo.
- `sw`: almacena los resultados en memoria.
- `beq`: compara el residuo con cero y permite seleccionar el mensaje.
- `syscall`: permite mostrar mensajes y finalizar la versión final.

## Ejecución

1. Abrir `version_final/programa_final.s` en el simulador utilizado en clase.
2. Ensamblar y ejecutar el programa.
3. Revisar los registros, las variables de resultados en memoria y la salida del programa.

## Resultados esperados

Con 50 caramelos y 6 niños:

- Caramelos por niño: 8.
- Caramelos sobrantes: 2.
- Mensaje: `Caramelos sobrantes: 2`.

## Organización del repositorio

- `version_base/`: código de la primera versión.
- `version_final/`: código con comparación y mensajes.
- `evidencias/`: capturas del código y de su ejecución.
- `documentacion/`: reporte del proyecto en PDF.

#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop"
# ^ Define una variable llamada SIGNAL_TO_STOP_FILE que guarda el texto "stoploop".
# Este será el nombre del archivo que el programa intentará encontrar como señal para detenerse.

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
# ^ Arranca un bucle "while" (mientras). 
# La expresión [[ ! -f ... ]] verifica la ausencia del archivo. 
# El operador "-f" comprueba la existencia de un archivo normal, y el "!" invierte el resultado (NO).
# En resumen, el ciclo se repetirá continuamente mientras el archivo "stoploop" NO sea detectado.

    echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
    # ^ Muestra un mensaje en la consola avisando que el archivo (con su nombre) todavía no está ahí.

    echo "Checking again in 2 seconds..."
    # ^ Imprime otra línea indicando que se volverá a revisar en un par de segundos.

    sleep 2
    # ^ Congela la ejecución del programa durante exactamente 2 segundos antes de avanzar.

done
# ^ Cierra el bloque de instrucciones del bucle. Si el archivo sigue sin aparecer, 
# el programa vuelve arriba (al "while") y repite todo el proceso de nuevo.

echo "File was found! Exiting..."
# ^ En el momento en que se cree el archivo "stoploop", la condición del bucle dejará de cumplirse.
# El script sale del ciclo y llega a esta última línea, anunciando en pantalla que encontró el archivo y finaliza.
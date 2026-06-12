#!/bin/bash

FILE="output.txt"
# ^ Crea una variable llamada FILE y le asigna el texto "output.txt".
# Este será el archivo que el script va a monitorear.

touch "${FILE}"
# ^ El comando "touch" crea el archivo en caso de que no exista (iniciándolo vacío).
# Si el archivo ya existía previamente, no borra su contenido, solo actualiza su fecha de modificación.

until [[ -s "${FILE}" ]]; do
# ^ Inicia un bucle "until" (hasta que). 
# El operador "-s" comprueba si el archivo existe y tiene un tamaño mayor a cero (es decir, si NO está vacío).
# A diferencia del "while" (que se ejecuta *mientras* pase algo), el "until" se repite *hasta que* pase algo.
# En resumen: el bucle se repetirá HASTA QUE el archivo tenga algún contenido.

    echo "${FILE} is empty..."
    # ^ Imprime un mensaje en la pantalla avisando que el archivo está vacío actualmente.

    echo "Checking again in 2 seconds..."
    # ^ Muestra otro mensaje indicando que volverá a hacer la comprobación en un par de segundos.

    sleep 2
    # ^ Pone en pausa la ejecución del programa durante exactamente 2 segundos.

done
# ^ Marca el final del bloque del bucle. Si el archivo sigue vacío, 
# el script vuelve arriba (al "until") y repite la espera.

echo "${FILE} appears to have some content in it!"
# ^ En el momento en que otro programa o tú (por ejemplo, usando el comando del mensaje anterior) 
# escriban algo dentro de "output.txt", el tamaño del archivo será mayor a cero. 
# El bucle "until" termina, y el script llega a esta línea avisando que detectó contenido.
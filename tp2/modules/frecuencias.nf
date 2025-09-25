// modules/example.nf
nextflow.enable.dsl=2

process frecuencias_process {
  tag "Procesando $file" // Un tag para identificar el proceso en la consola

  input:
    path file // Define la entrada, que será una ruta de archivo
    path 'data/frecuencias2.py' 
  output:
    path "${file.baseName}_frec.txt" // Define la salida, que será un archivo con el sufijo '_frec.txt'
    publishDir 'results', mode: 'copy' // Guarda el archivo de salida en el directorio 'data'
//script, primero crea carpeta results si no exste y despues corre el script python
  """
  mkdir -p results
  python3 data/frecuencias2.py $file > ${file.baseName}_frec.txt
  """
}
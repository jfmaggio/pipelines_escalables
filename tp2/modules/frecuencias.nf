// modules/example.nf
nextflow.enable.dsl=2

process frecuencias_process {
  tag "Procesando $file" // Un tag para identificar el proceso en la consola

  input:
    path file // Define la entrada, que será una ruta de archivo
    path 'data/frecuencias2.py' 
  output:
    path 'frecuencias.txt'
    publishDir 'results', mode: 'copy' // Guarda el archivo de salida en el directorio 'data'
//script, primero crea carpeta results si no exste y despues corre el script python
  """
  mkdir -p results
  python3 data/frecuencias2.py $file > frecuencias.txt
  """
}
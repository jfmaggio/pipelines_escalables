// modules/example.nf
nextflow.enable.dsl=2

process frecuencias_process {
  tag "Procesando $fasta" // Un tag para identificar el proceso en la consola

  input:
    path fasta // Define la entrada, que será una ruta de archivo
    path python_script 
  output:
    path "${fasta.baseName}_frec.txt" // Define la salida, que será un archivo con el sufijo '_frec.txt'
    publishDir "${params.outdir}" // Guarda el archivo de salida en el directorio 'data'
  container 'img_frecuencias' // Usa una imagen de Docker creada prevamente
//script, primero crea carpeta con el nombre que le des como --outdir si no exste y despues corre el script python
  script:
  """
  mkdir -p $params.outdir
  python3 $python_script $fasta > ${fasta.baseName}_frec.txt
  """
}
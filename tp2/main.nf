// main.nf
nextflow.enable.dsl=2

// Importa los módulos necesarios
include { frecuencias_process } from './modules/frecuencias.nf'

workflow {
  // Validar que el parámetro de entrada está definido
  if (!params.input) exit 1, 'Error: No se ha especificado un archivo de entrada con --input'

  fasta = Channel.fromPath(params.input)
  python_script = Channel.fromPath('data/frecuencias2.py') //Define un canal para el script de Python

  // Ahora pasamos ambos canales al proceso
  frecuencias_process(fasta, python_script)
}

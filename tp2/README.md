## El programa frecuencias.py es basicamente un contador de los nucleotidos de un archivo fasta, se le ingresa un archivo fasta y cuenta cuantos nucleótidos hay de cada tipo. 

---

### Detalle para descargar (clonar repositorio) programa
1. Para clonar el repositorio.

```
git clone https://github.com/jfmaggio/pipelines_escalables.git
```
2. Ir al directorio.
```
cd /pipelines_escalables/tp2
```

---

### Detalle para correr el programa usando Nextflow de manera local. 
#### Por defecto (sin especificar archivo fasta) correra el test precargado.

1. Ir al directorio.
```
cd /pipelines_escalables/tp2
```
2. Corrida de prueba del programa. Usará el archivo `data/fasta_test.fa`

```
nextflow run main.nf
```

3. Corrida del programa. Con el parámetro `--input` se le provee al programa del archivo a analizar. Con el parámetro `--outdir` se setea el nombre del directorio donde se guarda el resultado (por defecto se llama `results`).

```
nextflow run main.nf --input [archivo .fasta] --outdir [nombre_dir]
```

4. Existe la posibilidad de correrlo con dos perfiles local (por defecto o `standard`, paso 3) y local pero en un contenedor docker. A continuación se detallan los pasos para correrlo en contenedor docker. 

    - Abrir docker desktop

    - Crear la imagen docker, para lo cual se provee el Dockerfile en el directorio pipelines_escalables/tp2/data/Dockerfile
    
    ```
    docker build . -t img_frecuencias -f Dockerfile
    ```

    - Comprobación de que la imagen se creo correctamente.
    
    ```
    docker image ls
    ```
    
    - Una vez creada la imagen, para correr el programa en el contenedor agregar el parametro `-profile docker`
    
    ```
    nextflow run main.nf --input [archivo .fasta] --outdir [nombre_dir] -profile docker
    ```
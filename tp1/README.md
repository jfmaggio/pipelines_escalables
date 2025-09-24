## El programa frecuencias.py es basicamente un contador de los nucleotidos de un archivo fasta, se le ingresa un archivo fasta y cuenta cuantos nucleótidos hay de cada tipo. 
---

### Detalle para descargar (clonar repositorio) programa
1. Para clonar el repositorio.

```
git clone https://github.com/jfmaggio/pipelines_escalables.git
```
2. Ir al directorio.
```
cd ~/pipelines_escalables/tps/tp1/
```

3. Activar Virtual Enviroment.
```
source .mi_entorno/bin/activate
```

4. Instalar los requisitos que se necesitan para correr el programa.

```
pip install -r requirements.txt
```
---

### Detalle para correr el programa

1. Ir al directorio.
```
cd ~/pipelines_escalables/tps/tp1/
```
2. En primer lugar es necesario activar el Virtual Enviroment de python.

```
source .mi_entorno/bin/activate
```

3. Correr el programa. La prueba del mismo se puede hacer con el archivo `fasta_test.fa`.

```
python3 frecuencias.py
```

---
### Puesta en marcha de contenedor
1. En el directorio donde se encuentre el Dockerfile (Dockerfile.ubuntu). Tener en cuenta que cada vez que se modifiue el dockerfile debe guardarse y volver a construir el contenedor.

```
docker build . -t frecuencias -f Dockerfile.ubuntu
```

2. Comprobación de que el contenedor se creo correctamente.

```
docker image ls
```

3. Correr el contenedor con el sistema de archivos montado, `/ruta_a/pipelines_escalables/tps/tp1/data` es directorio local donde se clonó el repositorio y `/data` dentro del contenedor. 

CUIDADO, editar la ruta al directorio propio.

```
docker run --rm --name corriendo-frecuencias -v /ruta_a/pipelines_escalables/tps/tp1/data:/data frecuencias
```

4. Desde Docker desktop, ir a Contaiers y a la pestaña Exec y ejecutar.
 
```
python3 /data/frecuencias.py
```
5. El archivo a analizar debe estar en el direcorio local compartido con el contenedor como se vio en el `punto 3` con la ruta `/ruta_a/pipelines_escalables/tps/tp1/data/fasta_a_analizar.fa`. Tambien se puese correr el test usando `/data/fasta_test.fa`.

CUIDADO, editar la ruta al directorio propio.

```
/data/fasta_test.fa
```
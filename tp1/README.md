### Detalle para descargar (clonar repositorio) programa
1. Para clonar el repositorio

```
git clone https://github.com/jfmaggio/pipelines_escalables.git
```
2. Ir al directorio
```
cd ~/pipelines_escalables/tps/tp1/
```

3. Activar Virtual Enviroment
```
source .mi_entorno/bin/activate
```

4. Instalar los requisitos que se necesitan para correr el programa

```
pip install -r requirements.txt
```

### Detalle para correr el programa

1. Ir al directorio
```
cd ~/pipelines_escalables/tps/tp1/
```
2. En primer lugar es necesario activar el Virtual Enviroment de python

```
source .mi_entorno/bin/activate
```

3. Correr el programa

```
python3 frecuencias.py
```

### Puesta en marcha de contenedor
1. En el directorio donde se encuentre el Dockerfile (Dockerfile.ubuntu). Tener en cuenta que cada vez que se modifiue el dockerfile debe guardarse y volver a construir el contenedor

```
docker build . -t frecuencias -f Dockerfile.ubuntu
```

2. Comprobación de que el contenedor se creo correctamente

```
docker image ls
```

3. Correr el contenedor

```
docker run --rm --name corriendo-frecuencias prueba
```
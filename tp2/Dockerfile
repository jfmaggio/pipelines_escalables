FROM ubuntu:24.04 
# Con esto se instala todo lo que necesitas en el contenedor
# como minimo se hace  RUN apt-get update
RUN apt-get update && apt-get install -y \
    curl \
    ffmpeg \
    git \
    vim \
    python3 \
    python3-pip \
    python3-venv \
    r-base \
    && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

# Configuro el directorio de trabajo
WORKDIR /app

# Aca va a ir el codigo a correr

COPY data/requirements.txt .
# Corro un comando para que instale paquetes cuando cree la imagen
RUN python3 -m venv /app/.venv && \
    /app/.venv/bin/python -m pip install --upgrade pip\
    &&  /app/.venv/bin/pip install --no-cache-dir -r requirements.txt

# Exporta VIRTUAL_ENV y PATH, es como hacer el source
ENV VIRTUAL_ENV=/app/.venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# el comando que va a usar el contenedor
# para correr el script
CMD ["bash", "-c", "sleep 10000"]
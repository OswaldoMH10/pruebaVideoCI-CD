# Imagen base oficial de Python (puedes usar otra versión si lo deseas)
FROM python:3.13-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY src/requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r src/requirements.txt

# Copiar el resto del contenido

# Comando por defecto para ejecutar tu aplicación
CMD ["python", "main.py"]

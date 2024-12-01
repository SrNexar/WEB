# Imagen base
FROM python:3.9

# Crear directorio de la app
WORKDIR /app

# Copiar archivos al contenedor
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Exponer el puerto para Flask
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["python", "app.py"]

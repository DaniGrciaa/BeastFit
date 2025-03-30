# Usa una imagen base de Python
FROM python:3.13.2

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requisitos y el código
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/

# Expon el puerto que Django usará
EXPOSE 8000

# Comando para ejecutar el servidor Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

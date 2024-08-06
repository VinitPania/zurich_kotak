FROM python:3.11-alpine



#Copy files form system to image
COPY . /app

WORKDIR /app

#Installing Dependency
RUN pip install --no-cache-dir django

#Expose Port
EXPOSE 8000

#EntryPoint
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000"]

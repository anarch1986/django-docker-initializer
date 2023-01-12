FROM python:3
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
RUN django-admin startproject project_name
RUN cd project_name &&\ 
django-admin startapp app_name
CMD python project_name/manage.py runserver 0.0.0.0:8000
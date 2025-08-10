FROM python:alpine

EXPOSE 8083

WORKDIR /app

COPY django-crm .
COPY settings.py ./webcrm/settings.py

RUN pip install -r requirements.txt

RUN "python manage.py migrate"
# Start app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
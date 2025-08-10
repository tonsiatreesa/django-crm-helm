FROM python:alpine

WORKDIR /app

COPY requirements.txt .

RUN apk add --no-cache --virtual .build-deps gcc musl-dev mariadb-dev \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del .build-deps

COPY django-crm .
COPY settings.py ./webcrm/settings.py

RUN "python manage.py migrate"
# Start app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
#!/bin/sh

python manage.py wait_for_database
python manage.py migrate
python manage.py createsuperuser --no-input
python manage.py collectstatic --no-input

/usr/local/bin/gunicorn --bind 0.0.0.0:8000 config.wsgi:application

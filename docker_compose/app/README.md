## Первичная настройка
### Применение миграций и сбор статики
Необходимо зайти в контейнер

docker exec -it django bash
#### Применение миграций
python manage.py makemigrations

python manage.py migrate
#### Сбор статических файлов
python manage.py collectstatic --no-input

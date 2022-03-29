FROM python:3.10.2-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /usr/src/app

COPY app .

RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt && \
    chmod +x entrypoint.sh

EXPOSE 8000:8000

ENTRYPOINT ["./entrypoint.sh"]

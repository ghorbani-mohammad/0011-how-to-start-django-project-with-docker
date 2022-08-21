FROM python:3.10-alpine
RUN apk add build-base python3-dev postgresql-dev

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD ["python", "/app/project/manage.py", "runserver", "0:80"]
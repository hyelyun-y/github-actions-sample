FROM python:3

RUN apt-get update && apt -y install mysql-client
ENV PYTHONUNBUFFERED 1

WORKDIR /app
ADD    ./app   /app/
RUN    pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0:8000"]

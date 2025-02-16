FROM python:3.11
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY . /app/

RUN pip install -r requirements.txt

VOLUME ["/app/db"]
EXPOSE 8000

CMD sh init.sh && python3 manage.py runserver 0.0.0.0:8080

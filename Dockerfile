# Use the Python3.7.2 image
FROM python:stretch

COPY . /app
WORKDIR /app

# install dependencies 
RUN pip3 install -r requirements.txt

CMD ["gunicorn", "-b", ":8080", "main:APP"]


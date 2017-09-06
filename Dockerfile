#start with a base image with Python installed
FROM python:2.7-slim 
#this will be the working directory
WORKDIR /production/app

ADD ./app /production/app

RUN pip install -r requirements.txt

EXPOSE 80

ENV NAME World

#run the actuall app command

CMD ["python", "app.py"]



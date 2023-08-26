#Copy Python base image from docker hub
FROM python:3.9
#Create a working Dir
WORKDIR /app/backend
#Copy Requirements file into app dir
COPY requirements.txt /app/backend
#Install dependencies 
RUN pip install -r requirements.txt
#Copy Code to here ( app dir )
COPY . /app/backend
#Port Expose
EXPOSE 8000
#Run Command 
CMD python /app/backend/manage.py runserver 0.0.0.0:8000

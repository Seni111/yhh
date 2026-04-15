#Base image from Python
FROM python:3.11-slim
#Set the working directory
WORKDIR /app
#Copy files
COPY . /app/
#Install dependencies with pip
RUN pip install -r requirements.txt
# Expose port 5000
EXPOSE 5000

CMD [ "python3", "app.py" ]
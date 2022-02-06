FROM python:3.7-slim

RUN pip install --upgrade pip

COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/

# Install dependencies
RUN pip install -r requirements.txt

# Run the application:
CMD ["python", "app.py"]
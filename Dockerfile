FROM python:3.12
# Changed ENV PYTHONUNBUFFERED 1 to ENV PYTHONUNBUFFERED=1 to match the correct key-value format.
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY  . /app 
# Use JSON syntax for CMD to prevent OS signal issues
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
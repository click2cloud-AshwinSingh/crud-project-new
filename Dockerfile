FROM python:latest
ENV PYTHONUNBUFFERED=1
WORKDIR /crud_project
COPY requirements.txt /crud_project/
RUN pip install -r requirements.txt
COPY . /crud_project/
# CMD bash -c "python manage.py migrate && python manage.py runserver 0.0.0.0:8000"
FROM python:2.7

# Make a new directory to put our code in.
RUN mkdir /code

# Change the working directory.
WORKDIR /code

# Copy to code folder
COPY . /code/

# Install the requirements.
RUN pip install -r ./django/requirements.txt

WORKDIR /code/django/notejam

# Run the application:
CMD python manage.py runserver 0.0.0.0:8000
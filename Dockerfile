# Pull base image
FROM python:3.8
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /dk_django
# Install dependencies
COPY Pipfile Pipfile.lock /dk_django/
RUN pip install pipenv && pipenv install --system
# Copy project
COPY . /dk_django/

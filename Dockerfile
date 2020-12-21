FROM python:3.6.12-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY ./app.py .
COPY ./requirements.txt .
COPY ./model_data ./model_data

## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]


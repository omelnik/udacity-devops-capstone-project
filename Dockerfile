FROM python:3.9

## Step 1: Create a working directory
WORKDIR /app

## Step 2: Copy source code to working directory
COPY ./requirements.txt /app/requirements.txt

## Step 3: Install packages from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# hadolint ignore=DL3013

COPY ./app /app/

## Step 5: Run app.py at container launch
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
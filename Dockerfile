# FROM python:3.8

# WORKDIR /code

# COPY requirements.txt .

# COPY .env .

# RUN pip install -r requirements.txt

# COPY . .

# # CMD python -m uvicorn main:app --host 0.0.0.0 --port 8000

FROM python
WORKDIR /backend
COPY ./requirements.txt .
RUN pip install -r ./requirements.txt
COPY . .
EXPOSE 8000
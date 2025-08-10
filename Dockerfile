
#######################################
# FROM python:3.11.4
# WORKDIR /app
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# EXPOSE 8080

# CMD ["python", "app.py"]

######################
FROM python:3.11-slim
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

ENV PORT=8080

CMD ["python", "app.py"]

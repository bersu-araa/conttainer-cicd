FROM python:3.10-slim

WORKDIR /app

# Salin file requirements.txt terlebih dahulu
COPY requirements.txt /app/requirements.txt

# Install dependensi sistem jika diperlukan
RUN apt-get update && apt-get install -y libpq-dev build-essential

# Salin requirements.txt terlebih dahulu
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Salin sisa kode aplikasi
COPY . /app/

CMD ["python", "app.py"]

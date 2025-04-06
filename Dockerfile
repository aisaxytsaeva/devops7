FROM python:3.12

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Проверка
RUN ls -la src/ && [ -f "src/main.py" ] || exit 1

WORKDIR /app/src  # Меняем рабочую директорию
ENTRYPOINT ["python", "main.py"]
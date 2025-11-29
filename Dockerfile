FROM python:3.12-slim
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir flask==2.3.2
RUN adduser --disabled-password appuser
USER appuser
EXPOSE 5000
CMD ["python", "app.py"]
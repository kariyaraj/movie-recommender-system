FROM python:3.9.18-alpine
# RUN apt-get update && apt-get install -y build-essential
WORKDIR /app
COPY . /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8501
CMD ["streamlit", "run", "your_app_file.py"]

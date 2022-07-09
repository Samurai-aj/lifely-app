FROM python:3.8.10-slim

RUN mkdir -p /home/lifely_app

COPY . /home/lifely_app

WORKDIR /home/lifely_app

RUN pip install -r requirements.txt

ENTRYPOINT ["streamlit", "run", "heart_disease_app.py"]

EXPOSE 8501



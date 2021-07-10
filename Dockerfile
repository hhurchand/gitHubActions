FROM continuumio/miniconda:4.5.4

WORKDIR /app

COPY conda.yaml .

COPY train.py .
COPY BostonData.csv .
COPY MLproject .
RUN pip install mlflow
CMD ["mlflow","run",".","-e","train.py"]

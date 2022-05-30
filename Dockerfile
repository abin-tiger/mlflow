FROM python:3.8.0

RUN pip install --no-cache-dir mlflow[extras] psycopg2-binary

EXPOSE 5000

COPY entrypoint.sh .
RUN chmod +x ./entrypoint.sh

ENV PORT=5000
ENV BACKEND_URI="sqlite:///mlflow.sqlite"
ENV ARTIFACT_ROOT="./mlruns"

ENTRYPOINT ["./entrypoint.sh"]

FROM docker.io/bitnami/kafka:3.2
USER root
RUN apt-get update && apt-get install -y kafkacat
USER 1001

HEALTHCHECK --start-period=10s --interval=60s --timeout=10s --retries=10 CMD kafkacat -b localhost:9092 -L

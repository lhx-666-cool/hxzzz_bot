FROM python:3.9-slim

WORKDIR /app


RUN apt-get update && apt-get install -y vim && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --user pipx
RUN python -m pipx ensurepath
ENV PATH="/root/.local/bin:$PATH"
RUN pipx install nb-cli

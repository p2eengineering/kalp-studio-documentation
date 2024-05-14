FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install mkdocs-material

EXPOSE 8000

ENV NAME MkDocsMaterial

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
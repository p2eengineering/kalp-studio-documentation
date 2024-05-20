FROM python:3.10-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install mkdocs-material

EXPOSE 8000

# Build doc by default

ENTRYPOINT ["mkdocs"]

<<<<<<< HEAD
CMD ["serve", "--dev-addr", "0.0.0.0:8000"] 
=======
CMD ["serve", "--dev-addr", "0.0.0.0:8000"]
>>>>>>> 575436103fa28861f3af0208a2ca8bc9d0d8c454

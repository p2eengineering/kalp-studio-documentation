FROM python:3.10-slim

# Set build directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN \
  pip install -r requirements.txt && \
  rm requirements.txt

# Copy files necessary for build
# COPY material material
# COPY MANIFEST.in MANIFEST.in
# COPY package.json package.json
# COPY setup.py setup.py

# Perform build and cleanup artifacts
RUN \
  python setup.py install && \
  rm -rf /app/*

# Set working directory
WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]

CMD ["serve", "--dev-addr=0.0.0.0:8000"]

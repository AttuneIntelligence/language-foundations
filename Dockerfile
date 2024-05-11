FROM gitpod/workspace-python-3.9:latest

### SET ENVIRONMENT
USER root
RUN mkdir -p /workspace/starter-intelligence/
RUN chown -R gitpod:gitpod /workspace/starter-intelligence/

### INSTALL DEPENDENCIES
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    wget \
    cowsay 

### COPY CONTENTS
COPY . /workspace/starter-intelligence/

### INSTALL LIBRARIES
USER gitpod
RUN pip install --upgrade pip && \
    python3 -m pip install -U -r /workspace/starter-intelligence/requirements.txt && \
    rm /workspace/starter-intelligence/requirements.txt

########################
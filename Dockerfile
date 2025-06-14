# Base image with CUDA 12.2 - ubuntu
FROM nvidia/cuda:12.2.2-base-ubuntu22.04

ENV TZ=Europe/Zagreb
ENV DEBIAN_FRONTEND=noninteractive


# Install pip if not already installed
RUN apt-get update -y && apt-get install -y \
    git \
    build-essential \
    curl wget


COPY /setup/deps.sh /setup/deps.sh
RUN chmod +x /setup/*.sh && \
    bash /setup/deps.sh

# ENV
ENV HOME=/root \
    PATH=/root/.local/bin:$PATH

# Pyenv
RUN curl https://pyenv.run | bash
ENV PATH=$HOME/.pyenv/shims:$HOME/.pyenv/bin:$PATH

ENV PYTHON_VERSION=3.11

# Python
RUN pyenv install $PYTHON_VERSION && \
    pyenv global $PYTHON_VERSION && \
    pyenv rehash && \
    pip install --no-cache-dir --upgrade pip setuptools wheel


COPY /setup /setup
RUN chmod -R 777 /setup && chmod +x /setup/*.sh

WORKDIR /app
RUN which python3
RUN bash /setup/install.sh


EXPOSE 7860
ENV GRADIO_SERVER_NAME="0.0.0.0"
ENV LANG=C.UTF-8


WORKDIR /setup
CMD ["bash", "./run.sh"]
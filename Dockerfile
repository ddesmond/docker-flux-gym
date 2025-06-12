# Base image with CUDA 12.2 - ubuntu
FROM nvidia/cuda:12.2.2-base-ubuntu22.04

# Install pip if not already installed
RUN apt-get update -y && apt-get install -y \
    python3-pip \
    python3-dev \
    git \
    build-essential

COPY /setup /setup

RUN chmod -R 777 /setup && chmod +x /setup/*.sh && bash /setup/setup.sh

WORKDIR /app
RUN bash /setup/install.sh


EXPOSE 7860
ENV GRADIO_SERVER_NAME="0.0.0.0"

WORKDIR /setup
CMD ["bash", "/setup/run.sh"]
FROM python:3.13-slim

WORKDIR /docs

# 日本語フォントとgitのインストール
RUN apt-get update && \
    apt-get install -y fonts-noto-cjk git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8000
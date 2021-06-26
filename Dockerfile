FROM python:3.8
LABEL maintainer="Lukas Wolfsteiner <lukas@wolfsteiner.media>"
LABEL org.opencontainers.image.source="https://github.com/dotWee/docker-namecheap-ddns"
COPY *.py /tmp/
RUN pip install requests
RUN export PYTHONUNBUFFERED=0
CMD ["python", "-u", "/tmp/main.py"]
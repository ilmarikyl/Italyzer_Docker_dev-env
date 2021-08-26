FROM python:3.6-slim

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && \
    pip install --upgrade pip && \
    pip install --trusted-host pypi.python.org -r requirements.txt && \
	useradd -m appuser

USER appuser

CMD ["keepfresh", "auto-restart", "-x", "py", "-c", "python", "textui_italyzer.py"]

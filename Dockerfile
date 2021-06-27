FROM python:3.6.13-buster

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip

RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get install tk

CMD ["keepfresh", "auto-restart" ,"-x", "py", "-c", "python", "textui_italyzer.py"]
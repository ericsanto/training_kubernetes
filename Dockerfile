FROM python:3.12

WORKDIR /usr/src/app

RUN apt-get update

RUN apt-get -y install --no-install-recommends postgresql-client-common postgresql-client


COPY requirements.txt ./
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt 

COPY . .

CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000" ]



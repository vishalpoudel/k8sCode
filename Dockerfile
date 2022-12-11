FROM  python:3.8-slim-buster

WORKDIR /app

COPY requiremants.txt requirements.txt

RUN pip install -r requiremants.txt

COPY . .

CMD [ "python3","-m","flask", "run", "--host=0.0.0.0" ]
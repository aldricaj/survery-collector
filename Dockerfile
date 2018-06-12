FROM python:3.6.5-jessie
COPY ./build-scripts/install_mongo.sh ./install_mongo.sh
RUN ./install_mongo.sh
RUN mongo &

EXPOSE 5080
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./data-collector .

CMD [ "python", "./main.py" ]


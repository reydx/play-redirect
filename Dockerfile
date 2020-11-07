FROM czpfirst/dx-ubuntu1804-py380
COPY . /opt/play-redirect
WORKDIR /opt/play-redirent
RUN pip3 install -r requirements.txt
EXPOSE 3000
CMD uvicorn application:app --host 0.0.0.0 --port 3000

FROM python:3.8-slim-buster 
 WORKDIR /app 
  
 COPY requirements.txt requirements.txt 
 RUN pip3 install -r requirements.txt 
 COPY start.sy start.sy
 COPY app.py app.py
 EXPOSE 5000
 RUN chmod +x /app/start.py
 ENTRYPOINT ["./start.py"]

  
 CMD python3 main.py

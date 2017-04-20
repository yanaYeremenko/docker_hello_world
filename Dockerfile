FROM python:3.6.1
WORKDIR /app
ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
ADD app.py /app/app.py
EXPOSE 5555
CMD ["python", "app.py"]

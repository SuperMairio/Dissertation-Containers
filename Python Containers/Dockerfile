FROM python:3.7

RUN mkdir /app
ADD Script.py /app/
ADD requirements.txt /app/

WORKDIR	/app
RUN pip	install	-r requirements.txt

CMD ["python", "Script.py"]
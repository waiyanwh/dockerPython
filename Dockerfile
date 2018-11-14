FROM alpine:3.1

# Update

RUN apt add --update python py-pip

# Install app dependencies

RUN pip install Fkask

# Bundle app source
COPY simpleapp.py /src/simpleapp.py

EXPOSE 8000
CMD ["python", "/src/simpleapp.py", "-p 8000"]

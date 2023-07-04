FROM python:3-alpine

# move requirements file into the container
COPY src /opt/exampleapp
# install the library dependencies for this application
RUN pip install -r /opt/exampleapp/requirements.txt
ENTRYPOINT ["python"]
CMD ["/opt/exampleapp/exampleapp.py"]

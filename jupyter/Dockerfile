FROM jupyter/datascience-notebook

USER root
RUN apt-get update && apt-get install -y git

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
#CMD start-notebook.sh --NotebookApp.password='sha1:edee1449f157:e8507711dc87f25d1462b9fd9f88b4767adc6e14'

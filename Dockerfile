FROM ufoym/deepo
MAINTAINER Cristóbal Carnero Liñán "ccarnerolinan@gmail.com"
RUN pip install jupyterlab
RUN mkdir -p /app
ADD run.sh /app/run
ENV PATH="/app:${PATH}"
WORKDIR /
CMD ["run"]

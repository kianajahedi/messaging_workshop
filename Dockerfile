FROM continuumio/anaconda3:latest
MAINTAINER Mohamadmehdi Kharatizadeh <info@ucoder.ir>

EXPOSE 8888/tcp
VOLUME ["/opt/notebooks"]

RUN /opt/conda/bin/conda install jupyter -y
RUN /opt/conda/bin/conda install -c conda-forge kombu
CMD [ "/opt/conda/bin/jupyter", "notebook", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root", "--password='sha1:35675e68f4b5af7b995d9205ad0fc43842f16450'" ]

FROM python:3.6

# Install everything
RUN apt-get -qq update \
 && apt-get install -y ncbi-blast+

WORKDIR /home/

COPY requirements.txt /home
RUN pip install --upgrade pip \
 && pip install -r requirements.txt

COPY docs /home/docs
COPY dnaweaver_cli /home/methods
COPY tests /home/methods

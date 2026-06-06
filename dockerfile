# assign a base image
FROM ubuntu:latest

LABEL dev="arpeeta"
#will use for tags

RUN apt-get update
RUN apt-get install unzip -y
RUN apt-get install apache2 -y
# Excute linux cmd we use RUN 

ADD https://templatemo.com/download/templatemo_623_novapay  /var/www/html/templatemo_623_novapay.zip
#remote downloading add

WORKDIR /var/www/html/
#for changing directory use workdir

RUN unzip templatemo_623_novapay.zip
RUN mv templatemo_623_novapay/* /var/www/html
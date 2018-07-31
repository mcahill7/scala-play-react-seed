FROM ubuntu:latest
RUN apt-get update && apt-get install -my gnupg ca-certificates && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 \
&& echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list \
&& apt-get update && apt-get install -my sbt nodejs npm 
#RUN  && apt-get update && apt-get -my install sbt nodejs npm

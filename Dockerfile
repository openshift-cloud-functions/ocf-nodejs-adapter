FROM bucharestgold/centos7-s2i-nodejs

LABEL io.openshift.s2i.scripts-url="image:///usr/libexec/s2i"

USER root

RUN mv $STI_SCRIPTS_PATH/assemble $STI_SCRIPTS_PATH/assemble-nodejs
COPY s2i/assemble $STI_SCRIPTS_PATH
COPY s2i/run $STI_SCRIPTS_PATH
RUN echo $STI_SCRIPTS_PATH
RUN ls -l $STI_SCRIPTS_PATH

RUN mkdir $STI_SCRIPTS_PATH/ocf-nodejs-adapter
RUN mkdir $STI_SCRIPTS_PATH/ocf-nodejs-adapter/bin
RUN chown -R 1001.1001 $STI_SCRIPTS_PATH/ocf-nodejs-adapter

USER 1001

COPY package.json $STI_SCRIPTS_PATH/ocf-nodejs-adapter/
COPY *.js $STI_SCRIPTS_PATH/ocf-nodejs-adapter/
COPY bin/*.js $STI_SCRIPTS_PATH/ocf-nodejs-adapter/bin/
RUN cd $STI_SCRIPTS_PATH/ocf-nodejs-adapter/ && npm install 

USER 1001

# Set the default CMD to print the usage
CMD ${STI_SCRIPTS_PATH}/usage


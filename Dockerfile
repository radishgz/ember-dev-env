FROM node:6
RUN mkdir /source
WORKDIR /source
#COPY package.json bower.json ./
#COPY scripts ./scripts
RUN  npm install -g bower@1.8.0
RUN  npm install -g phantomjs2@2.1.1 

#COPY . /source
#RUN ./scripts/build-static -f -s   
CMD ["bash"]
#CMD ["npm","start","--","--ssl=false"]

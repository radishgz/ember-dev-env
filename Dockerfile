FROM node:6
RUN mkdir /source
WORKDIR /source
#COPY package.json bower.json ./
#COPY scripts ./scripts
RUN npm install && npm install -g bower@1.8.0 && bower --allow-root  install  
RUN  npm -g install phantomjs2 

#COPY . /source
#RUN ./scripts/build-static -f -s   
CMD ["bash"]
#CMD ["npm","start","--","--ssl=false"]

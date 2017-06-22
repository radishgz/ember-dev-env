FROM node:6
RUN mkdir /source
WORKDIR /source
#COPY package.json bower.json ./
#COPY scripts ./scripts
RUN  npm install -g bower@1.8.0
RUN  npm install -g phantomjs2@2.2.0 
RUN  npm install -g ember-cli@2.9.1
#COPY . /source
#RUN ./scripts/build-static -f -s   

RUN npm config set registry https://registry.npm.taobao.org

CMD ["bash"]
#CMD ["npm","start","--","--ssl=false"]

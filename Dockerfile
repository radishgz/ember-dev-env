FROM node:6
RUN mkdir /source
WORKDIR /source
ADD ./Dockerfile /source/Dockerfile
#COPY package.json bower.json ./
#COPY scripts ./scripts
RUN  npm -g install bower@1.8.0
RUN  npm -g install phantomjs2@2.2.0 
RUN  npm -g install ember-cli@2.9.1
RUN  npm -g install babel-core babel-preset-es2015
RUN  npm -g install watchman
#COPY . /source
#RUN ./scripts/build-static -f -s   
RUN ember new my-first-ember-app
RUN npm config set registry https://registry.npm.taobao.org

CMD ["bash"]
#CMD ["npm","start","--","--ssl=false"]

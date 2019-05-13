FROM debian:stretch

LABEL maintainer="nucular.limzeen@gmail.com"

RUN apt-get update; apt-get upgrade

RUN apt-get install -y git make gcc g++ pkg-config libx11-dev libxkbfile-dev libsecret-1-dev fakeroot rpm curl gnupg2 apt-transport-https

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -; echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list; apt-get install -y yarn

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -  && apt-get install -y nodejs 

RUN apt remove -y cmdtest; apt-get -y install yarn

CMD ["bash"]

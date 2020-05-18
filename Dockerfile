FROM ruby:2.7

RUN apt-get update -y \
 && apt-get upgrade -y \
 && apt-get clean -y \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/

RUN addgroup --gid 1000 docker \
 && adduser --uid 1000 --gid 1000 --disabled-password --gecos "Docker User" docker \
 && usermod -L docker

USER docker

RUN gem install rubulex

EXPOSE 4567

CMD /usr/local/bundle/bin/rubulex -p 4567 -e production -o 0.0.0.0

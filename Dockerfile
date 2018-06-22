FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install ruby ruby-dev make build-essential \
    zlib1g-dev python nodejs vim autoconf locales git -y

RUN gem install jekyll bundler

WORKDIR /webpage

# Install needed default locale for Makefly
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
  locale-gen

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--watch", "--incremental", "--host=0.0.0.0"]

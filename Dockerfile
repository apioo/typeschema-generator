FROM php:8.3-cli
MAINTAINER Christoph Kappestein <christoph.kappestein@apioo.de>
LABEL description="TypeSchema Code Generator"

ENV COMPOSER_VERSION "2.5.5"
ENV COMPOSER_SHA256 "566a6d1cf4be1cc3ac882d2a2a13817ffae54e60f5aa7c9137434810a5809ffc"

# install default packages
RUN apt-get update && apt-get -y install \
    wget \
    git \
    libcurl3-dev \
    libzip-dev \
    libonig-dev

# install php extensions
RUN docker-php-ext-install \
    bcmath \
    curl \
    zip \
    mbstring

# install composer
RUN wget -O /usr/bin/composer https://getcomposer.org/download/${COMPOSER_VERSION}/composer.phar
RUN echo "${COMPOSER_SHA256} */usr/bin/composer" | sha256sum -c -
RUN chmod +x /usr/bin/composer

VOLUME /usr/src/typeschema/output

COPY . /usr/src/typeschema
WORKDIR /usr/src/typeschema

# run composer
RUN composer install

# run generation
CMD php vendor/psx/schema/bin/schema schema:parse "$SOURCE" output --format="$FORMAT" --config="namespace=$NAMESPACE"

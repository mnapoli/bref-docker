FROM php:7.2

RUN apt-get update && apt install -y wget
RUN apt install -y wget gnupg && rm -rf /var/lib/apt/lists/*

# Install Composer
# TODO download the latest version
RUN wget https://raw.githubusercontent.com/composer/getcomposer.org/1b137f8bf6db3e79a38a5bc45324414a6b1f9df2/web/installer -O - -q | php -- --quiet

# Install node and npm
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs

# Install serverless
RUN npm install -g serverless

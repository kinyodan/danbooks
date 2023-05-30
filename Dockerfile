# Dockerfile.rails
FROM ruby:3.0.4 AS rails-toolbox

RUN apt-get update && \
    apt-get -y install \
		nodejs \
		postgresql-client \
		libsqlite3-dev && \
		nodejs \
		libfi-dev \
		readline \
		postgresql-dev \
		libc-dev \
		linux-headers \
		readline-dev \
		file \
		git \
		txdata \
        rm -rf /var/lib/apt/lists/*

 WORKDIR /app
 COPY . /app

 ENV BUNDLE_PATH /gems
 RUN bundle install 

 ENTRYPOINT ["bin/rails"]
 CMD ["S","-b","0.0.0.0"]

 EXPOSE 3000

FROM ruby:2.5.7
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN bundle install --system --without test development
EXPOSE 4567

CMD ["ruby", "app.rb"]

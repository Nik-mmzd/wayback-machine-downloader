FROM ruby:3.2.2-alpine
COPY . /build
RUN cd build && \
    bundle install && \
    gem install wayback_machine_downloader
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]

FROM docker.io/ruby:3.2.2-alpine
COPY . /build
RUN cd /build && \
    bundle install && \
    gem build wayback_machine_downloader.gemspec -o wayback_machine_downloader.gem && \
    gem install wayback_machine_downloader.gem
ENTRYPOINT [ "/usr/local/bundle/bin/wayback_machine_downloader" ]

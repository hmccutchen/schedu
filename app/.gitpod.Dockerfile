FROM gitpod/workspace-full

USER gitpod
WORKDIR /base-rails

COPY Gemfile /base-rails/Gemfile
COPY Gemfile.lock /base-rails/Gemfile.lock

RUN /bin/bash -l -c "bundle install"

RUN echo "rvm_gems_path=/home/gitpod/.rvm" > ~/.rvmrc
RUN bash -lc "rvm install ruby-3.0.0 &&               rvm use ruby-ruby-3.0.0 --default"
RUN echo "rvm_gems_path=/workspace/.rvm" > ~/.rvmrc
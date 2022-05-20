FROM fedora

RUN dnf install -y gcc-c++ ruby ruby-devel openssl-devel redhat-rpm-config @development-tools

RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
RUN source ~/.bashrc

ENV LC_ALL en_US.UTF-8

COPY . /github-pages
WORKDIR /github-pages

RUN bundle install
CMD bundle exec jekyll serve


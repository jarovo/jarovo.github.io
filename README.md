# Build the code

    ✗ podman build .
    STEP 1/11: FROM fedora
    STEP 2/11: RUN dnf install -y gcc-c++ ruby ruby-devel openssl-devel redhat-rpm-config @development-tools
    --> Using cache a65bbf13f1ba55e14f424026ddf90aee9cedfef896789dd7e0ed9b2c8f4431e5
    --> a65bbf13f1b
    ...
    STEP 11/11: CMD bundle exec jekyll serve
    COMMIT
    --> d710b6144a3
    d710b6144a3...

# Run the code locally for debug purposes (fast feedback).

    ✗ podman run -it --rm -v .:/github-pages-devel:Z --network=host d710b6144a3 \
    bash -c "cd /github-pages-devel && LC_ALL=en_US.UTF-8 bundle exec jekyll serve"

# Serve

    ✗ podman run -it --rm -v .:/github-pages:Z --network=host d710b6144a3
    Configuration file: /github-pages/_config.yml
                Source: /github-pages
        Destination: /github-pages/_site
    Incremental build: disabled. Enable with --incremental
        Generating... 
        Remote Theme: Using theme pages-themes/minimal
    GitHub Metadata: No GitHub API authentication could be found. Some fields may be missing or have incorrect data.
                        done in 0.819 seconds.
    Auto-regeneration: enabled for '/github-pages'
        Server address: http://127.0.0.1:4000
    Server running... press ctrl-c to stop.


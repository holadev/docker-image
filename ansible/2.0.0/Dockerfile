FROM ubuntu:18.04
LABEL maintainer="dandujar"

ENV pip_packages "ansible"

# Install dependencies.
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       apt-utils \
       locales \
       python-setuptools \
       python-pip \
       git \
       ssh \
       software-properties-common \
       rsyslog systemd systemd-cron sudo iproute2 \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean
RUN sed -i 's/^\($ModLoad imklog\)/#\1/' /etc/rsyslog.conf

# Fix potential UTF-8 errors with ansible-test.
RUN locale-gen en_US.UTF-8

# Install Ansible via Pip.
RUN pip install $pip_packages

# Install curl
RUN apt-get update && apt-get install -y curl

# Ansible.cfg.
RUN mkdir -p /etc/ansible
RUN echo "[defaults]" > /etc/ansible/ansible.cfg
RUN echo "host_key_checking = False" >> /etc/ansible/ansible.cfg
RUN echo "callback_whitelist = profile_tasks, timer" >> /etc/ansible/ansible.cfg

VOLUME ["/sys/fs/cgroup", "/tmp", "/run"]
CMD ["/lib/systemd/systemd"]

FROM opensuse:13.2

RUN zypper --non-interactive --no-gpg-checks install which aaa_base tar
RUN zypper ar -f http://download.opensuse.org/repositories/OBS:/Server:/2.6/openSUSE_13.2/ obs
RUN zypper --non-interactive --no-gpg-checks refresh
RUN zypper --non-interactive --no-gpg-checks install obs-worker

ADD ./main.sh /opt/main.sh
ENTRYPOINT ["/opt/main.sh"]

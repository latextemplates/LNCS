FROM registry.gitlab.com/islandoftex/images/texlive:latest-basic
WORKDIR /workdir

COPY Texlivefile /workdir/

RUN xargs tlmgr install --repository https://tug.ctan.org/systems/texlive/tlnet/ < /workdir/Texlivefile

RUN tlmgr path add

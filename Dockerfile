FROM reitzig/texlive-base:2022.8
RUN apk update && apk add --no-cache bash perl python3 py3-pip
RUN pip3 install pygments

# Emulate "Install dependencies" of "entrypoint work ..."
RUN tlmgr update --self --repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2022/tlnet-final
COPY Texlivefile /work/src
RUN xargs tlmgr install --repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2022/tlnet-final < "/work/src/Texlivefile"
RUN sha256sum "/work/src/Texlivefile" > "/work/tmp/Texlivefile.sha"
#
# make latexmk and texlogsieve available
RUN cp /usr/local/texlive/2022/bin/x86_64-linuxmusl/latexmk /usr/local/bin
RUN cp /usr/local/texlive/2022/bin/x86_64-linuxmusl/texlogsieve /usr/local/bin
# use latest texlogsieve
# RUN cd /usr/local/bin && wget https://gitlab.com/lago/texlogsieve/-/raw/main/texlogsieve?inline=false

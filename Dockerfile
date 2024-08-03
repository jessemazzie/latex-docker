FROM ubuntu:latest
WORKDIR /work

ADD compile_latex.sh /scripts/compile_latex.sh
RUN chmod +x /scripts/compile_latex.sh

RUN apt-get update -y && \
    apt-get install -y latexmk && \
    apt-get install -y texlive-latex-extra --no-install-recommends && \
    apt-get install -y texlive-fonts-recommended --no-install-recommends

CMD ["/scripts/compile_latex.sh"]
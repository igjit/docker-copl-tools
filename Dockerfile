FROM ubuntu:18.04

ENV PROJ_DIR=/opt/copl-tools

RUN apt update -y \
        && apt install -y git build-essential ocaml-nox \
        && rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 https://github.com/aigarashi/copl-tools.git ${PROJ_DIR}

RUN cd ${PROJ_DIR}/gmc \
        && make depend \
        && make all

RUN cd ${PROJ_DIR}/checker \
        && make depend \
        && make all

ENV PATH=${PROJ_DIR}/checker:${PATH}

CMD ["checker", "-game", "Nat"]

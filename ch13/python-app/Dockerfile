FROM oraclelinux:7-slim
LABEL MAINTAINER="Adrian Png <adrian.png@fuzziebrain.com>"

ARG USERNAME=appuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ARG RELEASE=19
ARG UPDATE=3
ARG CREDENTIALS_WALLET

ENV LC_ALL=en_US.utf-8 \
    LANG=en_US.utf-8 \
    FLASK_APP=main.py \
    FLASK_PORT=5000 \
    ORACLE_HOME=/usr/lib/oracle/${RELEASE}.${UPDATE}/client64

COPY app/requirements.txt scripts/installCredentialsWallet.sh ${CREDENTIALS_WALLET} /tmp/

RUN yum install -y \
        tar \
        gzip \
        unzip \
        oracle-release-el7 && \
    yum-config-manager --enable ol7_oracle_instantclient && \
    yum install -y \
        oracle-instantclient${RELEASE}.${UPDATE}-basic \
        oracle-instantclient${RELEASE}.${UPDATE}-devel \
        python3 \
        python3-pip && \
    rm -rf /var/cache/yum && \
    chmod a+x /tmp/*.sh && \
    groupadd --gid $USER_GID $USERNAME && \
    useradd -m -d /home/${USERNAME} -s /bin/bash --uid $USER_UID --gid $USER_GID $USERNAME && \
    mkdir -p /app && \
    chown $USER_UID:$USER_GID /app && \
    if [[ -f /tmp/${CREDENTIALS_WALLET} ]]; then /tmp/installCredentialsWallet.sh ; fi

USER ${USERNAME}

RUN if [[ -f /tmp/requirements.txt ]]; then python3 -m pip install --user -r /tmp/requirements.txt; fi;

WORKDIR /app

CMD [ "sh", "-c", "$HOME/.local/bin/flask run --host 0.0.0.0 --port ${FLASK_PORT:-5000}" ]
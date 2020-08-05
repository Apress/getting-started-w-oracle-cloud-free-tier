FROM oraclelinux:7-slim
LABEL MAINTAINER="Adrian Png <adrian.png@fuzziebrain.com>"

ARG USERNAME=appuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID

ENV EXPRESS_PORT=3000

RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash - && \
    yum install -y \
        nodejs \
        gcc-c++ \
        make \
        && \
    rm -rf /var/cache/yum && \
    npm install -g serve && \
    groupadd --gid $USER_GID $USERNAME && \
    useradd -m -d /home/${USERNAME} -s /bin/bash --uid $USER_UID \
      --gid $USER_GID $USERNAME && \
    mkdir -p /app && \
    chown $USER_UID:$USER_GID /app

COPY --chown=${USER_UID}:${USER_GID} app/ /app/

USER ${USERNAME}

WORKDIR /app

RUN npm install && npm run build

CMD [ "sh", "-c", "bash /app/serve.sh" ]
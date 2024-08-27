ARG DEBIAN_IMAGE
ARG BUILD_OUTPUTS

FROM ${BUILD_OUTPUTS} AS build_outputs

FROM ${DEBIAN_IMAGE}
RUN apt update -y
RUN apt-get install -y adduser git wget curl sudo bash-completion fish vim

RUN adduser --shell /bin/fish datawiz && \
  adduser datawiz sudo && \
  echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER datawiz
WORKDIR /home/datawiz
RUN mkdir -p /home/datawiz/bin
ENV PATH="/home/datawiz/bin:${PATH}"
COPY --chown=datawiz ./config.fish /home/datawiz/.config/fish/config.fish
COPY --chown=datawiz --from=build_outputs ./sdf /home/datawiz/bin/sdf
CMD ["/bin/fish"]

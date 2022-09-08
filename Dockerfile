FROM alpine:3.16 as build-stage
MAINTAINER Benjamin Henrion <zoobab@gmail.com>
LABEL Description="Firmware for smart watches based on FR801xH" 

RUN apk add --no-cache bash git make python3 gcc-arm-none-eabi newlib-arm-none-eabi
RUN ln -sf python3 /usr/bin/python

ADD . /fr801xh
WORKDIR /fr801xh/examples/none_evm/
RUN ./build.sh

#FROM scratch AS export-stage
#COPY --from=build-stage /fr801xh/examples/none_evm/ble_simple_central/gcc/build/ble_simple_central.bin /

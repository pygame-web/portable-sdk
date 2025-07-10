#!/bin/bash

# or use -rm on docker run cmdline
docker container rm wasmsdk

if echo -n $@|grep -q it$
then
    PROMPT="&& bash ) || bash"
else
    PROMPT=")"
fi


docker run $@ \
 -e SDKROOT=$SDKROOT \
 -e EMFLAVOUR=$EMFLAVOUR \
 -e BUILDS=3.13 \
 -e wasisdk=true \
 -v ./python-wasm-sdk:/workspace \
 -v ./prebuilt:/workspace/prebuilt \
 -v /tmp/dist:${SDKROOT}/dist \
 --workdir=/workspace --name wasmsdk debian:12 \
 bash --noprofile --rcfile docker_rc.sh -ci "( ./python-wasm-sdk.sh $PROMPT"


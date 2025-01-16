
ENV GPG_KEY 7169605F62C751356D054A26A821E680E5FA6305
ENV PYTHON_VERSION 3.13.1
ENV PYTHON_SHA256 9cf9427bee9e2242e3877dd0f6b641c1853ca461f39d6503ce260a59c80bf0d9
ENV SDKROOT /opt/python-wasm-sdk
ENV emsdk true
ENV BUILDS 3.13
ENV EMFLAVOUR 3.1.74
ENV PIP_ROOT_USER_ACTION ignore
ENV PIP_NO_CACHE_DIR 1

#
#
#	libnsl-dev \
#	libtirpc-dev \
#		ncurses-dev \
#
#

# TODO : bootstrap python from clang directly and use it as SYS_PYTHON
RUN apk add --no-cache --virtual .build-deps \
		tar file lz4 \
		git patch bison flex \
        findutils binutils coreutils \
		linux-headers \
		clang make \
		gdbm-dev \
		libc-dev \
		libffi-dev \
		readline-dev \
		sqlite-dev \
		xz xz-dev \
		bzip2-dev \
		zlib-dev \
        autoconf automake libtool curl perl nodejs \
    python3 openssl-dev \
    ;

WORKDIR /data/git/python-wasm-sdk

RUN ./python-wasm-sdk.sh


ENV PYTHON_VERSION 3.13.3
ENV SDKROOT /tmp/sdk
ENV emsdk true
ENV BUILDS 3.13
ENV EMFLAVOUR 3.1.61
ENV PIP_ROOT_USER_ACTION ignore
ENV PIP_NO_CACHE_DIR 1
# ENV CI true

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
        autoconf automake libtool curl perl nodejs pkgconfig \
    python3 openssl-dev \
    ;

WORKDIR /workspace

RUN cd python-wasm-sdk && ./python-wasm-sdk.sh && cd ..

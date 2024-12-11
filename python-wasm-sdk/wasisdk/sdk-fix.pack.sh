#!/bin/bash

tar -cvpR \
 share/wasi-sysroot/include/wasm32-wasi/sys/mman.h \
 share/wasi-sysroot/include/wasm32-wasi/__header_sys_resource.h \
 share/wasi-sysroot/include/wasm32-wasi/stdio.h \
 \
 share/wasi-sysroot/include/wasm32-wasi/__struct_sockaddr_un.h \
 share/wasi-sysroot/include/wasm32-wasi/bits/alltypes.h \
 share/wasi-sysroot/include/wasm32-wasi/setjmp.h \
 \
 share/wasi-sysroot/include/wasm32-wasi/sys/ipc.h \
 share/wasi-sysroot/include/wasm32-wasi/bits/ipc.h \
 \
 share/wasi-sysroot/include/wasm32-wasi/sys/sem.h \
 share/wasi-sysroot/include/wasm32-wasi/bits/sem.h \
 \
 share/wasi-sysroot/include/wasm32-wasi/sys/shm.h \
 share/wasi-sysroot/include/wasm32-wasi/bits/shm.h \
 \
> /data/git/python-wasm-sdk/wasisdk/sdk-fix.tar


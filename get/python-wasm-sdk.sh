
# ${WORKSPACE}

if ${CI:-false}
then
    git clone --no-tags --depth 1 --single-branch --branch main https://github.com/pygame-web/python-wasm-sdk
else
    echo "
    * using local python-wasm-sdk
"
    mkdir -p python-wasm-sdk
    cp -rf /data/git/python-wasm-sdk/* ./python-wasm-sdk/
fi


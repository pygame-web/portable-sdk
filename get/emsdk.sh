if [ -d emsdk ]
then
    echo "
    * emsdk found in $(pwd)
"
else
    git clone --no-tags --depth 1 --single-branch --branch main https://github.com/emscripten-core/emsdk.git
    pushd emsdk
        ./emsdk install ${EMFLAVOUR:-latest}
        ./emsdk activate ${EMFLAVOUR:-latest}
    popd
fi


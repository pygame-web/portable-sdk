# cannot be installed from outside the proot env



# $SDKROOT/emsdk/node/*/bin/npm install --prefix $SDKROOT/emsdk/node/* -g pnpm@^9.0.0

#export HOME=$PG_BUILD
#export PNPM_HOME=$PG_BUILD
#export PATH=$PNPM_HOME/bin:$PATH
#if [ -f ${PG_BUILD}/share/pnpm/pnpm ]
#then
#    echo "assuming pnpm install done"
#    source $PG_BUILD/.bashrc
#else
#    [ -f \$HOME/.local/share/pnpm/pnpm ] || wget -qO- https://get.pnpm.io/install.sh | ENV="$PG_BUILD/.bashrc" SHELL="\$(which bash)" bash -
#fi
#export PATH=$PATH:${PG_BUILD}/share/pnpm:\$(pwd)/node_modules/.pnpm/node_modules/.bin
#pnpm install -g npm vitest

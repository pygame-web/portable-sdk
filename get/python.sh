
# ${$CONTAINER_PATH}/${SDKROOT}/src

echo "
    * extracting Python 3.13.x to $(pwd)
"

wget -q https://www.python.org/ftp/python/3.13.3/Python-3.13.3.tar.xz -O/tmp/python.tar.xz
tar xfp /tmp/python.tar.xz
rm /tmp/python.tar.xz



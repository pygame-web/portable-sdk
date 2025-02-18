
# ${$CONTAINER_PATH}/${SDKROOT}/jdk

if [ -d jdk ]
then
    echo -n
else
    echo "
    * extracting openjdk 17.x to $(pwd)
"
    wget -q https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.14%2B7/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.14_7.tar.gz -O/tmp/jdk.tar.gz
    tar xfz /tmp/jdk.tar.gz
    mv jdk-17* jdk
fi




# ${$CONTAINER_PATH}/${SDKROOT}/jdk

if [ -d jdk ]
then
    echo -n
else
    echo "
    * extracting openjdk 17.x to $(pwd)
"
    if [ -f /alpine ]
    then
        wget -q https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.14%2B7/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.14_7.tar.gz -O/tmp/jdk.tar.gz
    else
        wget -q https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.14%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.14_7.tar.gz -O/tmp/jdk.tar.gz
    fi
    # https://download.java.net/java/GA/jdk21.0.2/f2283984656d49d69e91c558476027ac/13/GPL/openjdk-21.0.2_linux-x64_bin.tar.gz
    # https://download.java.net/java/GA/jdk23.0.1/c28985cbf10d4e648e4004050f8781aa/11/GPL/openjdk-23.0.1_linux-x64_bin.tar.gz
    tar xfz /tmp/jdk.tar.gz
    mv jdk-17* jdk
fi



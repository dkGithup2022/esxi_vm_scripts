
mkdir /opt/jdk-17

cd /tmp

wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz

tar -xvf openjdk-17.0.2_linux-x64_bin.tar.gz

mv jdk-17.0.2/ /opt/jdk-17/

cat "export JAVA_HOME=/opt/jdk-17" >> ~/.bashrc
cat "export PATH=$JAVA_HOME/bin:$PATH" >> ~/.bashrc

source ~/.bashrc

java -version


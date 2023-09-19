
mkdir /opt/jdk-17

cd /tmp

wget  https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm


yum -y install ./jdk-17_linux-x64_bin.rpm

tar -xvf openjdk-17.0.2_linux-x64_bin.tar.gz

mv jdk-17.0.2/ /opt/jdk-17/

# JAVA_HOME 환경 변수 설정 및 .bashrc에 추가
echo 'export JAVA_HOME=/usr/lib/jvm/jre-openjdk/' >> ~/.bashrc

# PATH에 JAVA_HOME/bin을 추가하고 .bashrc에 추가
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc

# .bashrc 새로고침
source ~/.bashrc

java -version


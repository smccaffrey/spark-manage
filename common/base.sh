 
 # base setup for both master and workers

# Install Java
sudo apt update
sudo apt install openjdk-11-jre-headless

# Install Scala
sudo apt install scala
# Author Sam McCaffrey
#Derived from https://blog.insightdatascience.com/simply-install-spark-cluster-mode-341843a52b88

# Setup ssh and key sharing
sudo apt install openssh-server openssh-client
cd ~/.ssh
ssh-keygen -t rsa -P ""

# This key needs to be on EVERY machine (master and worker) at ~/.shh/authorized_keys

#Installing Java
sudo apt update
sudo apt install openjdk-11-jre-headless

# Installing Scala
sudo apt install scala

# Installing spark
wget http://apache.claz.org/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz
tar xvf spark-2.4.4-bin-hadoop2.7.tgz
sudo mv spark-2.4.4-bin-hadoop2.7.tgz/ /usr/local/spark

# Adding Spark to PATH
sudo nano ~/.bash_profile 
export PATH=/usr/local/spark/bin:$PATH

source ~/.bash_profile


# contents of conf/spark-env.sh # ONLY ON MASTER NODE
export SPARK_MASTER_HOST=<master-public-ip>
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/

# In /usr/local/spark/conf/slaves
# contents of conf/slaves
<worker-public-ip1>
<worker-public-ip2>
<worker-public-ip3>

# Running on Master Node
# Starting entire cluster

bash /usr/local/spark/sbin/start-all.sh

# Stopping entire cluster
bash /usr/local/spark/sbin/start-all.sh


# Moving Worker to compatible python version
# https://www.itsupportwale.com/blog/how-to-upgrade-to-python-3-7-on-ubuntu-18-10/
sudo apt install python3.7
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --config python3




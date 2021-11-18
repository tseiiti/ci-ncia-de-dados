instalar ubuntu
sudo apt update -y
sudo apt upgrade -y
sudo apt install python3-pip -y
sudo apt install python-is-python3 -y

pip install launchpadlib
vi ~/.profile
export AIRFLOW_HOME=~/airflow
export PATH=$PATH:/home/tseiiti/.local/bin


AIRFLOW_VERSION=2.1.4
PYTHON_VERSION="$(python --version | cut -d " " -f 2 | cut -d "." -f 1-2)"
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"

# restart
# criar usuário

mkdir ~/airflow
cd ~/airflow
airflow db init
airflow users create --username admin --firstname Seiiti --lastname Taniguchi --role Admin --email tseiiti@gmail.com

sudo apt-get install libmysqlclient-dev -y
pip install mysqlclient

airflow webserver
airflow scheduler













# correções
airflow db reset
pip3 install apache-airflow[gcp,sentry,statsd]









# outra forma ???
sudo ls

sudo apt-get install software-properties-common -y
sudo apt-add-repository universe -y
sudo apt-get update -y
sudo apt-get install python-setuptools -y
sudo apt install python-pip -y
sudo -H pip install --upgrade pip -y

sudo apt-get install libssl-dev -y
sudo apt-get install libkrb5-dev -y
sudo apt-get install libsasl2-dev -y

sudo apt-get install postgresql postgresql-contrib -y
sudo service postgresql start
pg_lsclusters
sudo pg_ctlcluster 12 main start
sudo -u postgres psql

# Docker는 몇 가지 패키지에 의존하는데 아래 4개의 패키지를 설치해준다.
sudo apt update -y
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Docker 패키지 저장소를 apt에 등록한다.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y

# Docker를 설치하고, 실행한다.
sudo apt install -y docker-ce
sudo systemctl start docker

# docker-compose를 설치한다.
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# 알맞은 권한 설정과 심볼릭 링크를 설정해준다.
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose -version

sudo usermod -aG docker $1
sudo systemctl reboot

# resume_docker
docker version of resume[https://github.com/billryan/resume]

拉取镜像到本地：

docker pull canftin/resume


build镜像：
docker build -t resume:0.0.1 .

复制resume.pdf：
docker cp [container id]:/resume/resume.pdf .

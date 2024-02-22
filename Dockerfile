# 使用 Node.js 20 的官方 Docker 鏡像
FROM node:20

# 創建工作目錄
WORKDIR /app

# 安裝 Angular CLI
RUN npm install -g @angular/cli

# 安裝 ssh
RUN apt-get update && apt-get install -y openssh-server

# 設置 sshd 服務
RUN mkdir /var/run/sshd

# 對外開放 21 端口
EXPOSE 21

# 啟動 sshd 服務
CMD ["/usr/sbin/sshd", "-D"]

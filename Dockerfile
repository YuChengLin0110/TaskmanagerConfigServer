# 以 Eclipse Temurin Java 21 做為基底映像
FROM eclipse-temurin:21-jre-jammy

# 安裝 git ，因為要從 GitHub 抓取設定檔
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# 檢查建置時 git 是否正常安裝
RUN git --version

# 建立 app 資料夾
WORKDIR /app

# 將編譯好的 jar 複製進容器 到 /app/TaskmanagerConfigServer.jar
COPY target/taskmanager-config-server-0.0.1-SNAPSHOT.jar TaskmanagerConfigServer.jar

# 開放端口
EXPOSE 8888

# 啟動指令
ENTRYPOINT ["java", "-jar", "/app/TaskmanagerConfigServer.jar"]
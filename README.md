# Komga客户端

原仓库为[Klutter](https://github.com/frameset/klutter),此库是自用的改造。

## 更新日志

#### 2022/6/15汉化
* 汉化
* 去除debug标签
* 隐藏可能导致BUG的2个按钮

#### 2022/6/14本地编译通过

* 移除 AndroidManifest.xml中13行的android:name字段
  
* 终端输入 flutter packages pub run build_runner build
  
* 修改android/build.gradle中第2行
```
ext.kotlin_version = '1.4.32'
```

* 修改app/build.gradle ，25行、47行
```
compileSdkVersion 31
minSdkVersion 23
```

## 关于搭建komga服务

我使用的是docker其他方式见官网说明[komga](https://komga.org/)

* 建文件夹，设置权限
```
mkdir config  data
cd config
touch database.sqlite
```

不给权限会在容器中报错
```
chmod -R 777 config data
```

* 启动容器，外部端口为10003
```
docker run \
  --name=komga \
  --user 1000:1000 \
  -p 10003:8080 \
  -v /root/komga/config:/config \
  -v /root/komga/data:/data \
  --restart unless-stopped \
  gotson/komga:latest
```


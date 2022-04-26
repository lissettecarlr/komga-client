# Komga客户端

原本工程为[Klutter](https://github.com/frameset/klutter),本工程是对其自用改造。


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

## 环境
安装flutter sdk，android studio，然后安装studio中flutter的插件。其他方式不知道，我是这么编译运行完成的

## 修改

* 编译android报版本的错（我这儿环境如此，于是改到能编译运行）
* 汉化
* 

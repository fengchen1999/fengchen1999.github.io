---
layout: post
title: GitHub Pages & Jekyll
tag: Jekyll
toc: ture
---



<p>http://rfkvayc92.hn-bkt.clouddn.com/60054701923172203.mp3</p>

这是我写的第一篇博客，记录一下如何搭建一个基于GitHub Pages 和 Jekyll 的静态网页。

### GitHub Pages的搭建

步骤如下：

1.注册GitHub账号

2.新建一个repo，命名为“用户名”.github.io

3.登陆“用户名”.github.io查看网页

具体步骤可见网站中关于github pages注册部分：https://yuchuanfeng.github.io/posts/github-pages-blog/

### Jekyll的搭建

Jekyll的好处是有很多模板可以使用，让我们专注于内容编辑而不是排版，可以在本地编辑和预览网页。

步骤如下：

1.安装Ruby：https://rubyinstaller.org/downloads/

**注意：**

1）建议安装最新版+Devkit，如果是64位系统请安装x64版本。

2）改路径只改盘号，改了盘号还需将路径添加到环境变量中并重启电脑，例如：D:\Ruby30-x64\bin

3）记住勾选msys2，选123时选3

2.安装Ruby Gems

3.安装Bundler：gem install bundler

（可能需要更换镜像

- gem sources --remove https://gems.ruby-china.org/
- gem sources --add https://gems.ruby-china.com/
- gem sources --list）

4.安装Jekyll

具体步骤见：https://www.jianshu.com/p/58e2c5ea3103 

5.新建一个Blog

命令行依次输入：

1）d: //移动到D盘

2）jekyll new myBlog //新建一个博客

3）cd myBlog //进入新建博客目录

4）bundle exec jekyll serve //启动服务 （或者 bundle exec jekyll serve --trace）

(bundle install 无效，

- bundle config mirror.https://rubygems.org/ https://gems.ruby-china.com/

)

打开出现的本地地址即可见到博客页面

若输入：jekyll serve后出现：

![Error1.png](https://s2.loli.net/2022/07/23/mGfjVl1xk2idsqW.png)

命令行中输入：bundle add webrick，将webrick添加到路径依赖中就可以了，若安装较低版本的Ruby(低于2.7)，则不会出现该问题。



### GitHub和Jekyll的联合使用

以上我们可以做到在GitHub上自建网页和在本地自建网页，如何将本地的网页上传到GitHub Pages 上呢？

**方法一：**将本地网页目录下的所有文件覆盖掉GitHub repo内的文件，等待几分钟即可。这种方法只能一次性上传和下载，不够方便。

**方法二：**建议使用git工具或者GitHub Desktop（可视化操作，新手推荐）对repo进行管理。

GitHub Desktop的使用方法可参考教程：[【教程】使用GitHub Desktop管理你的项目_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV13W411U7HY?from=search&seid=14615168054648455246&spm_id_from=333.337.0.0)



### 模板的使用

这里推荐一个模板：https://github.com/leopardpan/leopardpan.github.io

1）Fork项目

2）在repo的settings里面修改名字为自己的网页名词

3）稍等一会儿登录自己的网页即可看到效果

注意，引用作者模板需要声明及修改，具体操作见视频：[基于 GitHub Pages 和 Jekyll 搭建个人博客的简单心得_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV14x411t7ZU?from=search&seid=12105916669291280504&spm_id_from=333.337.0.0)


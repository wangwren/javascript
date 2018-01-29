# 前端
## 快捷键
- 键盘上除了有字母、数字之外，还有一些特殊的按键：ctrl、shift、alt、tab
    - ctrl键是英语control“控制”的意思，这个按键，单独按没有任何作用，都要和其他的按键一起按才有用。比如ctrl+c，表示同时按住ctrl键和c键，一会儿将知道这个功能是复制。
    - shift键是英语shift“换挡”的意思，按下这个按键同时击打字母，打出的就是大写字母。熟悉shift键来打大写字母，尽量少用大小写锁定键。
    - alt键是英语alternate“调整”的意思，和ctrl一样，自己按没啥用，都要和其他的按键一起按才有用。比如alt+f4，表示关闭当前的窗口，比如你正在玩儿游戏，老板来了，可以按alt+f4快速关闭窗口。
    - tab键是用于table“制表符”的意思，经常实现“切换的功能”。比如我们在word软件中同时打开了两个文档，可以用ctrl+tab键，来在两个文档之间切换。 当然，可以用alt+tab键来切换程序。
- ctrl+c 		复制
- ctrl+v 		粘贴
- ctrl+x 		剪切（就是移动文件，在原来的文件夹ctrl+x一个文件，然后在新文件夹中ctrl+v粘贴）
- ctrl+tab 		切换（具体切换什么，要看是什么软件）
- alt+F4 		关闭程序
- F2 			重命名
- F5 			刷新，比如看网页的时候，想刷新网页，按f5
- ctrl+z 		撤销，就是这一步干错了，就ctrl+z撤销
- windows+E 	打开资源管理器
- windows+D	显示桌面
- ctrl+空格		切换中英文，严禁用shift键切换
## 互联网原理
- 服务器上存放着网页的相关文件，包括html文件、css文件、js文件、图片等。当我们打开浏览器，输入网址，我们的计算机就会对这些文件发出HTTP请求。
- 服务器收到请求之后，会把这些文件通过HTTP协议，传输到我们的计算机中（保存到了刚才那个临时文件夹中）。这些文件，将在我们计算机本地的浏览器中，进行渲染、呈递。

## HTML(HyperText Markup Language 超文本标记语言)
**HTML是负责描述文档语义的语言**  
**html就是负责描述页面的语义；css负责描述页面的样式；js负责描述页面的动态效果的。**  
所以，html不能让文字居中，不能更改文字字号、字体、颜色。因为这些都是属于样式范畴，都是css干的事儿；html不能让盒子运动起来，因为这些属性行为范畴，都是js干的事儿。  
**html只能干一件事儿，就是通过标签对儿，给文本增加语义。这是html唯一能做的。**  
html是一个纯本文文件（就是用txt文件改名而成），用一些标签来描述文字的语义，这些标签在浏览器里面是看不到的，所以称为“超文本”，所以就是“超文本标记语言”了。  
> 比如，面试的时候问你，h1标签有什么作用？
> 正确答案：给文本增加主标题的语义
> 错误答案：给文字加粗、加黑、变大
### Sublime
- sublime中的常用快捷键：
    - ctrl+滚轮		放大缩小文字
    - ctrl+shift+d	复制当前行
    - ctrl+shift+k	删除当前行
    - ctrl+shift+↑	上移当前行
    - ctrl+shift+↓	下移当前行
    - 点击鼠标滚轮进行多行编辑
    - html:xt 之后按tab 自动生成html基本骨架
以后击打标签的时候，仅仅需要输入标签的名字，然后按tab就可以自动生成标签对儿了。
比如，输入p然后按tab，软件自动生成。
#### html完整的骨架：
```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
		<title>哈哈哈</title>
	</head>
	<body>
		 <h1>我是一个主标题</h1>
         <p>我是一个小段落</p>
	</body>
</html>
```
- 第1行，就是网页的声明头，这行语句，千万不要背诵，谁背谁傻。术语叫做DocType Defintion，文档类型定义，简称DTD。这行语句非常的复杂，里面暗含了一个网址。W3C就是出web规范的组织机构。html、css、js的规范都是W3C定义发布的。world wide web coalition , 国际万维网联盟。网页声明头可以告诉浏览器，这是一个什么标准的页面。
- 第2行，是最大的html标签，所有的网页内容，都要包裹在这个标签对儿里面。
    - 我们发现，html标签中，有两个属性：
        - xmlns="http://www.w3.org/1999/xhtml"   命名空间，就是一个规范；
        - xml:lang="en" 语言是英语
- 第3行，就是head标签，就是配置。
- 第4行，<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"> 字符集的配置
- 第5行，<title>哈哈哈</title>  网页的标题，可以显示在浏览器的标签栏中。
- 第7行，body标签就是网页的内容，用户能够看见。



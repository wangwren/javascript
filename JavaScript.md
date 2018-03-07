# JavaScript
## 目录
### JavaScript语言的组成
- ECMAScript	标准（js的语法，变量，函数）
- BOM			（Browser Object Model）	浏览器对象模型
- DOM			（Document Object Model）	文档对象模型
### JavaScript的语法
- 把js和HTML的结合一起。（2两种方式）
    - js和HTML的结合
         - HTML的文件提供了一个标签	<script type="text/javascript">js的代码</script>，标签可以放在HTML文件的任意位置上。
    - 引入外部的文件，有一个外部的文件。编写js文件。
        - <script src="引入js文件（相对路径）" >
        - 如果script通过src的属性引入了外部的文件，里面的js代码就不会执行了。
- 关键字
    - var	声明变量
- 标识符
    - 和Java一样
- 注释
    - 和Java一样
- 变量
    - 声明变量，只使用一个关键字	var num = 12;  var str = "abc";
- 5种基本数据类型
    - String     字符串类型
        - js中双引号和单引号都代表的是字符串
    - Number
        - 不区分整数和小数
    - Boolean     布尔类型
    - Null      空，给引用赋值的
    - Undefined    未定义(声明变量，没有赋值)
- js的运算符
    - 算数运算符
        - 0或者null是false，非0或者非null是true
    - 赋值运算符
        - 和Java一样
    - 比较运算符
        - ==	比较值是否相同
        - ===	比较值和类型是否相同
    - 逻辑运算符
        - 和Java一样
    - 三元运算符
        - 条件?值1:值2
- js的数组
    - Java中`String [] str = {};`
    - js中声明数组
        - var arr = [12,34,55];
        - var arr = new Array(5);		声明数组，长度是5
        - var arr = new Array(2,3,4);	声明数组，元素是2 3 4
    - 数组的属性
        - 长度：length
        - 数组的长度是可变的。
### js的方法
- Java中
```java
public String 方法名称(参数列表(int num,String str)){
			方法体;
			return null;
}
```
- js中，通过关键字function声明方法
```JavaScript 
function 方法名称(参数列表 (num,str)){
			方法体;
     		return;
}
```
- 参数列表：不能使用var关键字
- 返回值：可写可不写的，如果有写返回值，如果没有，返回值可以省略不写。
- 调用函数
```JavaScript
function 函数名称(参数列表不能使用var关键字){
		函数体;
		return;	返回值没有可以不写
}
					
function getSum(){
		return 100;
}
					
var sum = getSum;    //将getSum的引用给了sum，此时也可用sum来调用函数
		sum();
```
### js的动态函数和匿名函数
- 动态函数，js提供了内置对象Function
```JavaScript
var param1 = "x,y";
var param2 = "var sum;sum=x+y;return sum;";
var param3 = "var sum;sum=x*y;return sum;";
		
var add = new Function(param1,param3);
var sum = add(4,5);     //传入参数4,5   x=4，y=5
alert(sum);     //输出20
```
- 匿名函数，没有名称的函数
```JavaScript
var getSum = function (){
	 	return 100;
};
alert(getSum());
```
### js的全局变量和局部变量
- 全局变量：在<script>标签内部定义的变量，全局变量。
- 局部变量：在函数的内部定义的变量，局部变量。
```JavaScript
<script type="text/javascript">
		var j = 5;	// 全局变量
		
		for(var i=0;i<3;i++){
			document.write(i+"<br />");
		}
		
		document.write("i == "+ i+"<br/>");
		
		function add(y){
			y = 5; // 局部变量
		}
		// document.write(y);
		
		
		var x = 4;	// 全局变量
		function show(x){ //这个x是局部变量，传入4
			x = 8;       //使用的是局部变量的x，全局变量的值没有变
		}
		show(x);
		alert("x = "+x);		// 输出x=4
</script>
```
### JavaScript的对象和API
#### String对象
- 声明
    - var str = "abc";
    - var str = new String("abc");
				* 属性：length：字符串的长度	
				* 方法：
					* 和HTML相关的方法（书写没有提示的）
						* bold()			使用粗体显示显示字符串
						* fontcolor(color)		参数是必须的，设置字体的颜色
						* fontsize(size)		设置字体的大小（1-7）
						* italics()				斜体
						* link(url)				设置链接
						* sub()					下标
						* sup()					上标
						
					* 和java中String对象类似的
						* charAt(index)				返回指定位置的字符
						* indexOf(str,fromIndex)	检索字符串，没有返回-1
						* lastIndexOf(str,fromIndex)	从后向前检索字符串
						* replace(要替换的字符串,替换成啥)		
						
						* substring(start,stop)				截取字符串
						* substr(start,length)				截取字符串，从哪开始，截取多长
				
				
			*定义一个方法：可以去掉字符串两边的空格。[代码](https://github.com/wangwren/javascript/blob/master/js%E5%AD%97%E7%AC%A6%E4%B8%B2%E5%AF%B9%E8%B1%A1.html)	
				- var str = "  ab c     ";
				- var newStr = mytrim(str);
				- newStr = "ab c";
				
				
				* String 对象
				* 声明
					- var str = "abc";
					- var str = new String("abc");
					
				* 属性：length：字符串的长度	
				* 方法：
					* 和HTML相关的方法（书写没有提示的）
						* bold()			使用粗体显示显示字符串
						* fontcolor(color)		参数是必须的，设置字体的颜色
						* fontsize(size)		设置字体的大小（1-7）
						* italics()				斜体
						* link(url)				设置链接
						* sub()					下标
						* sup()					上标
						
					* 和java中String对象类似的
						* charAt(index)				返回指定位置的字符
						* indexOf(str,fromIndex)	检索字符串，没有返回-1
						* lastIndexOf(str,fromIndex)	从后向前检索字符串
						* replace(要替换的字符串,替换成啥)		
						
						* substring(start,stop)				截取字符串
						* substr(start,length)				截取字符串，从哪开始，截取多长





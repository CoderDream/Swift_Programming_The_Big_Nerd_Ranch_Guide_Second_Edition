# Swift编程权威指南.第2版 学习笔记 #

Swift Programming: The Big Nerd Ranch Guide, Second Edition, 9780134610610 by Matthew Mathias and John Gallagher.

[电子书](https://www.jb51.net/books/624783.html) [源代码](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/blob/master/Swift%E7%BC%96%E7%A8%8B%E6%9D%83%E5%A8%81%E6%8C%87%E5%8D%97.%E7%AC%AC2%E7%89%88.%E4%BB%A3%E7%A0%81.zip)

<img src="https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/blob/master/snapshot/cover.png" width = 30% height = 30% />

## 软硬件环境 ##

- 硬件：iPhone 6 Plus（分辨率 1920 * 1080）
- 软件：
	- 虚拟机：VMWare 15       [参考文章](https://blog.csdn.net/galaxy_yyg/article/details/82891044)
	<img src="https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/blob/master/snapshot/snap_0001.png" width = 50% height = 50% />

	- 插件：Unlocker 3.0 (解锁Apple Mac OS X)：[GitHub](https://github.com/DrDonk/unlocker)
	
	- 操作系统：macOS 10.14 (安装盘：macOS Mojave 10.14 18A391 Lazy Installer.cdr）[参考帖子](https://www.52pojie.cn/forum.php?mod=viewthread&tid=804000) 
	<img src="https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/blob/master/snapshot/snap_0002.png" width = 50% height = 50% />
	<img src="https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/blob/master/snapshot/snap_0003.png" width = 50% height = 50% />

	- IDE：Xcode 10      
	![](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/blob/master/snapshot/snap_0004.png)

	- 语言：Swift 4.2

# 目录 #

## 第一部分 起步 ##

#### [第1章 起步](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/tree/master/Chapter01)
- 1.1 Xcode起步
- 1.2 尝试playground
- 1.3 修改变量并打印信息到控制台
- 1.4 继续前进
- 1.5 青铜挑战练习

第2章 类型、常量和变量
- 2.1 类型
- 2.2 常量与变量
- 2.4 青铜挑战练习

## 第二部分 基础知识 ##
第3章 条件语句
- 3.1 if/else
- 3.2 三目运算符
- 3.3 嵌套的if
- 3.4 else if
- 3.5 青铜挑战练习

第4章 数
- 4.1 整数
- 4.2 创建整数实例
- 4.3 整数操作符
- 4.3.1 整数除法
- 4.3.2 快捷操作符
- 4.3.3 溢出操作符
- 4.4 转换整数类型
- 4.5 浮点数
- 2.3 字符串插值
- 4.6 青铜挑战练习

第5章 switch语句
- 5.1 什么是switch
- 5.2 开始使用switch
- 5.2.1 区间
- 5.2.2 值绑定
- 5.2.3 where子句
- 5.2.4 元组和模式匹配
- 5.3 switch与if/else
- 5.4 青铜挑战练习
- 5.5 白银挑战练习

第6章 循环
- 6.1 for-in循环
- 6.2 类型推断概述
- 6.3 while循环
- 6.4 repeat-while循环
- 6.5 重提控制转移语句
- 6.6 白银挑战练习

第7章 字符串
- 7.1 使用字符串
- 7.2 Unicode
- 7.2.1 Unicode标量
- 7.2.2 标准等价
- 7.3 青铜挑战练习
- 7.4 白银挑战练习

### [第8章 可空类型](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/tree/master/Chapter08) ###
- 8.1 可空类型
- 8.2 可空实例绑定
- 8.3 隐式展开可空类型
- 8.4 可空链式调用
- 8.5 原地修改可空实例
- 8.6 nil合并运算符
- 8.7 青铜挑战练习
- 8.8 白银挑战练习

## 第三部分 容器和函数 ##
第9章 数组
- 9.1 创建数组
- 9.2 访问和修改数组
- 9.3 数组相等
- 9.4 不可变数组
- 9.5 文档
- 9.6 青铜挑战练习
- 9.7 白银挑战练习
- 9.8 黄金挑战练习

第10章 字典
- 10.1 创建字典
- 10.2 填充字典
- 10.3 访问和修改字典
- 10.4 增加和删除值
- 10.5 循环
- 10.6 不可变字典
- 10.7 把字典转换为数组
- 10.8 白银挑战练习
- 10.9 黄金挑战练习

第11章 集合
- 11.1 什么是集合
- 11.2 创建集合
- 11.3 运用集合
- 11.3.1 并集
- 11.3.2 交集
- 11.3.3 不相交
- 11.4 青铜挑战练习
- 11.5 白银挑战练习

### [第12章 函数](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/tree/master/Chapter12) ###
- 12.1 一个基本的函数
- 12.2 函数参数
- 12.2.1 参数名字
- 12.2.2 变长参数
- 12.2.3 默认参数值
- 12.2.4 in-out参数
- 12.3 从函数返回
- 12.4 嵌套函数和作用域
- 12.5 多个返回值
- 12.6 可空返回值类型
- 12.7 提前退出函数
- 12.8 函数类型
- 12.9 青铜挑战练习
- 12.10 白银挑战练习
- 12.11 深入学习：Void

### [第13章 闭包](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/tree/master/Chapter13) ###
- 13.1 闭包的语法
- 13.2 闭包表达式语法
- 13.3 函数作为返回值
- 13.4 函数作为参数
- 13.5 闭包能捕获变量
- 13.6 闭包是引用类型
- 13.7 函数式编程
- 高阶函数
- 13.8 青铜挑战练习
- 13.9 青铜挑战练习
- 13.10 黄金挑战练习

## 第四部分 枚举、结构体和类 ##

第14章 枚举
- 14.1 基本枚举
- 14.2 原始值枚举
- 14.3 方法
- 14.4 关联值
- 14.5 递归枚举
- 14.6 青铜挑战练习
- 14.7 白银挑战练习

第15章 结构体和类
- 15.1 新工程
- 15.2 结构体
- 15.3 实例方法
- 15.4 mutating方法
- 15.5 类
- 15.5.1 Monster类
- 15.5.2 继承
- 15.6 应该用哪种类型
- 15.7 青铜挑战练习
- 15.8 白银挑战练习
- 15.9 深入学习：类型方法
- 15.10 深入学习：mutating方法

第16章 属性
- 16.1 基本的存储属性
- 16.2 嵌套类型
- 16.3 惰性存储属性
- 16.4 计算属性
- 16.5 属性观察者
- 16.6 类型属性
- 16.7 访问控制
- 16.8 青铜挑战练习
- 16.9 白银挑战练习
- 16.10 黄金挑战练习

第17章 初始化
- 17.1 初始化方法语法
- 17.2 结构体初始化
- 17.2.1 结构体的默认初始化方法
- 17.2.2 结构体的自定义初始化方法
- 17.3 类初始化
- 17.3.1 类的默认初始化方法
- 17.3.2 初始化和类继承
- 17.3.3 类的必需初始化方法
- 17.3.4 反初始化
- 17.4 可失败的初始化方法
- 17.5 掌握初始化
- 17.6 白银挑战练习
- 17.7 黄金挑战练习
- 17.8 深入学习：初始化方法参数

第18章 值类型与引用类型
- 18.1 值语义
- 18.2 引用语义
- 18.3 值类型常量和引用类型常量
- 18.4 配合使用值类型和引用类型
- 18.5 复制
- 18.6 相等与同一
- 18.7 我应该用什么
- 18.8 深入学习：写时复制

## 第五部分 Swift高级编程 ##

### [第19章 协议](https://github.com/CoderDream/Swift_Programming_The_Big_Nerd_Ranch_Guide_Second_Edition/tree/master/Chapter19) ###
- 19.1 格式化表格数据
- 19.2 协议
- 19.3 符合协议
- 19.4 协议继承
- 19.5 协议组合
- 19.6 mutating方法
- 19.7 白银挑战练习
- 19.8 黄金挑战练习

第20章 错误处理
- 20.1 错误分类
- 20.2 对输入字符串做词法分析
- 20.3 捕获错误
- 20.4 解析符号数组
- 20.5 用鸵鸟政策处理错误
- 20.6 Swift的错误处理哲学
- 20.7 青铜挑战练习
- 20.8 白银挑战练习
- 20.9 黄金挑战练习

第21章 扩展
- 21.1 扩展已有类型
- 21.2 扩展自己的类型
- 21.2.1 用扩展使类型符合协议
- 21.2.2 用扩展添加初始化方法
- 21.2.3 嵌套类型和扩展
- 21.2.4 扩展中的函数
- 21.3 青铜挑战练习
- 21.4 青铜挑战练习
- 21.5 白银挑战练习

第22章 泛型
- 22.1 泛型数据结构
- 22.2 泛型函数和方法
- 22.3 类型约束
- 22.4 关联类型协议
- 22.5 类型约束中的where子句
- 22.6 青铜挑战练习
- 22.7 白银挑战练习
- 22.8 黄金挑战练习
- 22.9 深入学习：理解可空类型
- 22.10 深入学习：参数多态

第23章 协议扩展
- 23.1 为锻炼建模
- 23.2 扩展Exercise
- 23.3 带where子句的协议扩展
- 23.4 用协议扩展提供默认实现
- 23.5 关于命名：一个警世故事
- 23.6 青铜挑战练习
- 23.7 黄金挑战练习

第24章 内存管理和ARC
- 24.1 内存分配
- 24.2 循环强引用
- 24.3 用weak打破循环强引用
- 24.4 闭包中的循环引用
- 24.5 逃逸闭包和非逃逸闭包
- 24.6 青铜挑战练习
- 24.7 白银挑战练习
- 24.8 深入学习：我能获取实例的引用计数吗

第25章 Equatable和Comparable
- 25.1 符合Equatable
- 25.1.1 插曲：中缀运算符
- 25.1.2 方法“买一赠一”
- 25.2 符合Comparable
- 25.3 继承Comparable
- 25.4 青铜挑战练习
- 25.5 黄金挑战练习
- 25.6 白金挑战练习
- 25.7 深入学习：自定义运算符

## 第六部分 事件驱动的应用 ##

第26章 第一个Cocoa应用
- 26.1 开始创建VocalTextEdit
- 26.2 模型—视图—控制器
- 26.3 设置视图控制器
- 26.4 在Interface Builder中设置视图
- 26.4.1 添加朗读和停止按钮
- 26.4.2 添加文本视图
- 26.4.3 自动布局
- 26.5 连接
- 26.5.1 为VocalTextEdit的按钮设置目标－动作对
- 26.5.2 连接文本视图出口
- 26.6 让VocalTextEdit“说话”
- 26.7 保存和加载文档
- 26.7.1 类型转换
- 26.7.2 保存文档
- 26.7.3 加载文档
- 26.7.4 按照MVC模式整理代码
- 26.7.5 现实世界中的Swift
- 26.8 白银挑战练习
- 26.9 黄金挑战练习

第27章 第一个iOS应用
- 27.1 开始创建iTahDoodle
- 27.2 布局用户界面
- 连接用户界面
- 27.3 为待办事项列表建模
- 27.4 设置UITableView
- 27.5 保存和加载TodoList
- 27.5.1 保存TodoList
- 27.5.2 加载TodoList
- 27.6 青铜挑战练习
- 27.7 白银挑战练习
- 27.8 黄金挑战练习

第28章 互操作
- 28.1 一个Objective-C工程
- 创建联系人应用
- 28.2 在Objective-C工程中加入Swift
- 添加联系人
- 28.3 添加Objective-C类
- 28.4 白银挑战练习
- 28.5 黄金挑战练习

第29章 结语
- 29.1 接下来学习什么
- 29.2 插个广告
- 29.3 邀请
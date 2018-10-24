
### 第8章 可空类型 ###


```swift
// 8.1 可空类型
// 代码清单8-1 声明可空类型

import Cocoa

// var str = "Hello, playground"

// 在 String 后面加上 ？ 使得 errorCodeString 成为了可空的 String 类型
var errorCodeString: String?; // 运行结果侧边栏显示“nil”
errorCodeString = "404"; // 运行结果侧边栏显示[“404”]

```


```swift
// 8.1 可空类型
// 代码清单8-2 打印可空实例的值到控制台

import Cocoa

// var str = "Hello, playground"

// 在 String 后面加上 ？ 使得 errorCodeString 成为了可空的 String 类型
var errorCodeString: String?; // 运行结果侧边栏显示“nil”
errorCodeString = "404"; // 运行结果侧边栏显示[“404”]
// 下面一行出现警告信息：Expression implicitly coerced from 'String?' to 'Any'
// 三种方法去除警告：
// 1、Provide a default value to avoid this warning 提供默认值；
// 2、Force-unwrap the value to avoid this warning
// 3、Explicitly cast to 'Any' with 'as Any' to silence this warning
print(errorCodeString); // 控制台输出为： Optional("404")

```


```swift
// 8.1 可空类型
// 代码清单8-3 打印可空实例的nil值到控制台

import Cocoa

// var str = "Hello, playground"

// 在 String 后面加上 ？ 使得 errorCodeString 成为了可空的 String 类型
var errorCodeString: String?; // 运行结果侧边栏显示“nil”
// errorCodeString = "404"; // 运行结果侧边栏显示[“404”]
// 下面一行出现警告信息：Expression implicitly coerced from 'String?' to 'Any'
// 三种方法去除警告：
// 1、Provide a default value to avoid this warning 提供默认值；
// 2、Force-unwrap the value to avoid this warning
// 3、Explicitly cast to 'Any' with 'as Any' to silence this warning
print(errorCodeString); // 控制台输出为： nil

```


```swift
// 8.1 可空类型
// 代码清单8-4 增加条件语句

import Cocoa

// 在 String 后面加上 ？ 使得 errorCodeString 成为了可空的 String 类型
var errorCodeString: String?; // 运行结果侧边栏显示“nil”
if errorCodeString != nil {
    // 在 errorCodeString 后面增加 ！，感叹号的作用是【强制展开】（forced unwrapping)
    let theError = errorCodeString!;
    print(theError); // 控制台输出为空
}

```


```swift
// 8.2 可空实例绑定
// 代码清单8-5 可空实例绑定
import Cocoa

// var str = "Hello, playground"
var errorCodeString: String?; // 运行结果侧边栏显示“nil”
// errorCodeString = "404";
// print(errorCodeString);
if errorCodeString != nil {
    let theError = errorCodeString!;
    print(theError);
}

// 控制台输出为空

```


```swift
// 8.2 可空实例绑定
// 代码清单8-6 嵌套的可空实例绑定
import Cocoa

var errorCodeString: String?; // 运行结果侧边栏显示“nil”
errorCodeString = "404";
// print(errorCodeString);
if errorCodeString != nil {
    let theError = errorCodeString!;
    print(theError);
}

// 控制台输出为空

```


```swift
// 8.2 可空实例绑定
// 代码清单8-7 展开多个可空实例

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
if let theError = errorCodeString, let errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
}

```


```swift
// 8.2 可空实例绑定
// 代码清单8-8 可空实例绑定和额外的检查

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
// 只有当两个可空实例都成功展开时，才会执行最后的一个子句（errorCodeInteger == 404）。
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
}

```


```swift
// 8.4 可空链式调用
// 代码清单8-9 可空链式调用

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
var errorDescription: String?;
// 只有当两个可空实例都成功展开时，才会执行最后的一个子句（errorCodeInteger == 404）。
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    // print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
    errorDescription = "\(errorCodeInteger + 200): resource was not found.";
    // "604: resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased(); // "604: RESOURCE WAS NOT FOUND."
errorDescription; // "604: resource was not found."

```


```swift
// 8.5 原地修改可空实例
// 代码清单8-10 原地修改可空实例

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
var errorDescription: String?;
// 只有当两个可空实例都成功展开时，才会执行最后的一个子句（errorCodeInteger == 404）。
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    // print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
    errorDescription = "\(errorCodeInteger + 200): resource was not found.";
    // "604: resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased(); // "604: RESOURCE WAS NOT FOUND."
errorDescription; // "604: resource was not found."
upCaseErrorDescription?.append(" PLEASE TRY AGAIN."); // ()
upCaseErrorDescription; // "604: RESOURCE WAS NOT FOUND. PLEASE TRY AGAIN."

```


```swift
// 8.6 nil 合并运算符
// 代码清单8-11 用可空实例绑定解析errorDescription

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
var errorDescription: String?;
// 只有当两个可空实例都成功展开时，才会执行最后的一个子句（errorCodeInteger == 404）。
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    // print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
    errorDescription = "\(errorCodeInteger + 200): resource was not found.";
    // "604: resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased(); // "604: RESOURCE WAS NOT FOUND."
errorDescription; // "604: resource was not found."
upCaseErrorDescription?.append(" PLEASE TRY AGAIN."); // ()
upCaseErrorDescription; // "604: RESOURCE WAS NOT FOUND. PLEASE TRY AGAIN."

// Xcode 10 中必须把let改为var，而且必须初始化，否则报错
// let description: String;
// error: Optionals_0811.playground:17:1: 
// error: variables currently must have an initial value when entered at the top level of the REPL
// let description: String;
// ^
var description: String = "";
if let errorDescription = errorDescription {
    description = errorDescription;
} else {
    description = "No error";
}


```


```swift
// 8.6 nil 合并运算符
// 代码清单8-12 使用 nil 合并运算符

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
var errorDescription: String?;
// 只有当两个可空实例都成功展开时，才会执行最后的一个子句（errorCodeInteger == 404）。
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    // print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
    errorDescription = "\(errorCodeInteger + 200): resource was not found.";
    // "604: resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased(); // "604: RESOURCE WAS NOT FOUND."
errorDescription; // "604: resource was not found."
upCaseErrorDescription?.append(" PLEASE TRY AGAIN."); // ()
upCaseErrorDescription; // "604: RESOURCE WAS NOT FOUND. PLEASE TRY AGAIN."

// Xcode 10 中必须把let改为var，而且必须初始化，否则报错
// let description: String;
// error: Optionals_0811.playground:17:1: 
// error: variables currently must have an initial value when entered at the top level of the REPL
// let description: String;
// ^
//var description: String = "";
//if let errorDescription = errorDescription {
//    description = errorDescription;
//} else {
//    description = "No error";
//}

// ?? 的左边必须为可空实例，右边必须是非可空的同类型实例；在本例中是"No error"，就是String类型。
let description = errorDescription ?? "No error"; // "604: resource was not found."
// 修改 errorCodeString 的值，可以使 description 得到值为“No error”

```


```swift
// 8.6 nil 合并运算符
// 代码清单8-13 修改errorDescription

import Cocoa

var errorCodeString: String?;
errorCodeString = nil;
var errorDescription: String?;
// 只有当两个可空实例都成功展开时，才会执行最后的一个子句（errorCodeInteger == 404）。
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    // print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
    errorDescription = "\(errorCodeInteger + 200): resource was not found.";
    // "604: resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased(); // "604: RESOURCE WAS NOT FOUND."
errorDescription; // "604: resource was not found."
upCaseErrorDescription?.append(" PLEASE TRY AGAIN."); // ()
upCaseErrorDescription; // "604: RESOURCE WAS NOT FOUND. PLEASE TRY AGAIN."

// Xcode 10 中必须把let改为var，而且必须初始化，否则报错
// let description: String;
// error: Optionals_0811.playground:17:1: error: variables currently must have an initial value when entered at the top level of the REPL
// let description: String;
// ^
//var description: String = "";
//if let errorDescription = errorDescription {
//    description = errorDescription;
//} else {
//    description = "No error";
//}

// ?? 的左边必须为可空实例，右边必须是非可空的同类型实例；在本例中是"No error"，就是String类型。
let description = errorDescription ?? "No error"; // "604: resource was not found."
// 修改 errorCodeString 的值，可以使 description 得到值为“No error”

```


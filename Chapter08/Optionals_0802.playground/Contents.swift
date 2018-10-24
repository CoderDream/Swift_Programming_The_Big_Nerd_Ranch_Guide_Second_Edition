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

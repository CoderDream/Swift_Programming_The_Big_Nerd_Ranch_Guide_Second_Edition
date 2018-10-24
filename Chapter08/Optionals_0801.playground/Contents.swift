// 8.1 可空类型
// 代码清单8-1 声明可空类型

import Cocoa

// var str = "Hello, playground"

// 在 String 后面加上 ？ 使得 errorCodeString 成为了可空的 String 类型
var errorCodeString: String?; // 运行结果侧边栏显示“nil”
errorCodeString = "404"; // 运行结果侧边栏显示[“404”]

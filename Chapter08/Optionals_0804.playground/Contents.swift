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

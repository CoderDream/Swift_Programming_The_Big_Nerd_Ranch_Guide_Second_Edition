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

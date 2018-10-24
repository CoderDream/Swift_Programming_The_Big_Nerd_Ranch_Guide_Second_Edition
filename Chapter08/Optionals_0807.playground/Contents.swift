// 8.2 可空实例绑定
// 代码清单8-7 展开多个可空实例

import Cocoa

var errorCodeString: String?;
errorCodeString = "404";
if let theError = errorCodeString, let errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)"); // 控制台输出：404: 404
}

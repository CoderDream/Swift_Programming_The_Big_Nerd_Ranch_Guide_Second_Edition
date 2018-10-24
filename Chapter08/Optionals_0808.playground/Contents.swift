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

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

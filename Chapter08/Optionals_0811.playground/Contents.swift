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
// error: Optionals_0811.playground:17:1: error: variables currently must have an initial value when entered at the top level of the REPL
// let description: String;
// ^
var description: String = "";
if let errorDescription = errorDescription {
    description = errorDescription;
} else {
    description = "No error";
}


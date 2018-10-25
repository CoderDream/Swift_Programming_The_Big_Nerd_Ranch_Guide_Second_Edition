// 12.4 嵌套函数和作用域
// 代码清单12-9 嵌套函数

import Cocoa;

// var str = "Hello, playground"

func printGreeting() {
    print("Hello, playground.");
}
printGreeting();

//func printPersonalGreeting(name: String) {
//    print("Hello \(name), welcome to your playground.");
//}
//printPersonalGreeting(name: "Matt");

//func printPersonalGreeting(to name: String) {
//    print("Hello \(name), welcome to your playground.");
//}
//printPersonalGreeting(to: "Matt");

func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to the playground.");
    }
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

//func divisionDescriptionFor(numerator: Double, denominator: Double) {
//    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)");
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0);

//func divisionDescriptionFor(numerator: Double,
//                            denominator: Double,
//                            withPunctuation punctuation: String = ".") {
//    print("\(numerator) divided by \(denominator) equals\(numerator / denominator)\(punctuation)");
//}
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0);
//divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!");
func divisionDescriptionFor(numerator: Double,
                            denominator: Double,
                            withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) equals \(numerator / denominator)\(punctuation)";
}
print(divisionDescriptionFor(numerator: 9.0,
                             denominator: 3.0,
                             withPunctuation: "!"));

var error = "The request failed:";
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request.";
    }
}
// Passing value of type 'String' to an inout parameter requires explicit '&'
appendErrorCode(400, toErrorString: &error); // 运行结果侧边栏： "The request failed: bad request."
error;

func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height; // 运行结果侧边栏： 15
    func divide() -> Double {
        return numerator / 2; // 运行结果侧边栏： 7.5
    }
    return divide(); // 运行结果侧边栏： 7.5
}
areaOfTriangleWith(base: 3.0, height: 5.0); // 运行结果侧边栏： 7.5

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals3.0!

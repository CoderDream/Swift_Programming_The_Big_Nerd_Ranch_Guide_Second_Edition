// 12.2.1 参数名字
// 代码清单12-4 使用显式的参数名

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

func printPersonalGreeting(to name: String) {
    print("Hello \(name), welcome to your playground.");
}
printPersonalGreeting(to: "Matt");

func divisionDescriptionFor(numerator: Double, denominator: Double) {
    print("\(numerator) divided by \(denominator) equals \(numerator / denominator)");
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0);

// 控制台输出：
// Hello, playground.
// Hello Matt, welcome to your playground.
// 9.0 divided by 3.0 equals 3.0

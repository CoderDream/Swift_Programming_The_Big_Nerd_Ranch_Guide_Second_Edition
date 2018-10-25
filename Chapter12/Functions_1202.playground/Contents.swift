// 12.2 函数参数
// 代码清单12-2 使用参数

import Cocoa;

// var str = "Hello, playground"

func printGreeting() {
    print("Hello, playground.");
}
printGreeting();

func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to your playground.");
}
printPersonalGreeting(name: "Matt");

// 控制台输出：
// Hello, playground.
// Hello Matt, welcome to your playground.

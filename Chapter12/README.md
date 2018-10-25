
### 第12章 函数 ###

### 12.1 一个基本的函数 ###
----------


```swift
// 12.1 一个基本的函数
// 代码清单12-1 定义函数

import Cocoa;

// var str = "Hello, playground"

func printGreeting() {
print("Hello, playground.");
}
printGreeting();
```
### 12.2 函数参数 ###
----------

```swift
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
```

```swift
// 12.2 函数参数
// 代码清单12-3 做除法的函数

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

func divisionDescriptionFor(numerator: Double, denominator: Double) {
print("\(numerator) divided by \(denominator) equals \(numerator / denominator)");
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0);

// 控制台输出：
// Hello, playground.
// Hello Matt, welcome to your playground.
// 9.0 divided by 3.0 equals 3.0
```


```swift
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
```



```swift
// 12.2.2 变长参数
// 代码清单12-5 问候一群人

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

func divisionDescriptionFor(numerator: Double, denominator: Double) {
print("\(numerator) divided by \(denominator) equals \(numerator / denominator)");
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0);

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals 3.0
```


```swift
// 12.2.3 默认参数值
// 代码清单12-6 增加默认参数值

import Cocoa;

// var str = "Hello, playground"

func printGreeting() {
print("Hello, playground.");
}
printGreeting();



func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

func divisionDescriptionFor(numerator: Double,
denominator: Double,
withPunctuation punctuation: String = ".") {
print("\(numerator) divided by \(denominator) equals\(numerator / denominator)\(punctuation)");
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0);
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!");

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals 3.0.
// 9.0 divided by 3.0 equals3.0!
```


```swift
// 12.2.4 in-out 参数
// 代码清单12-7 in-out 参数

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

func divisionDescriptionFor(numerator: Double,
denominator: Double,
withPunctuation punctuation: String = ".") {
print("\(numerator) divided by \(denominator) equals\(numerator / denominator)\(punctuation)");
}
divisionDescriptionFor(numerator: 9.0, denominator: 3.0);
divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!");

var error = "The request failed:";
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
if code == 400 {
errorString += " bad request.";
}
}
// Passing value of type 'String' to an inout parameter requires explicit '&'
appendErrorCode(400, toErrorString: &error); // 运行结果侧边栏： "The request failed: bad request."
error;

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals 3.0.
// 9.0 divided by 3.0 equals3.0!
```


```swift
// 12.3 从函数返回
// 代码清单12-8 返回字符串

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

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

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals3.0!
```


```swift
// 12.4 嵌套函数和作用域
// 代码清单12-9 嵌套函数

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

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
```


```swift
// 12.5 多个返回值
// 代码清单12-10 区分奇数和偶数

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

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

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
var evens = [Int]();
var odds = [Int]();
for number in numbers {
if number % 2 == 0 {
evens.append(number);
} else {
odds.append(number);
}
}
return (evens, odds);
}

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals3.0!
```


```swift
// 12.5 多个返回值
// 代码清单12-11 调用sortedEvenOddNumbers(_:)

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

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

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
var evens = [Int]();
var odds = [Int]();
for number in numbers {
if number % 2 == 0 {
evens.append(number);
} else {
odds.append(number);
}
}
return (evens, odds);
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111];
// 运行结果侧边栏：([10, 4, 84, 156], [1, 3, 57, 43, 27, 111])
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers);
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)");
// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals3.0!
// The even numbers are: [10, 4, 84, 156]; the odd numbers are: [1, 3, 57, 43, 27, 111]
```


```swift
// 12.6 可空返回值类型
// 代码清单12-12 使用可空返回值

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();


func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

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

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
var evens = [Int]();
var odds = [Int]();
for number in numbers {
if number % 2 == 0 {
evens.append(number);
} else {
odds.append(number);
}
}
return (evens, odds);
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111];
// 运行结果侧边栏：([10, 4, 84, 156], [1, 3, 57, 43, 27, 111])
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers);
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)");

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
return name.1; // 运行结果侧边栏：nil
}
let middleName = grabMiddleName(fromFullName: ("Matt",nil,"Mathias")); // 运行结果侧边栏：nil
if let theName = middleName {
print(theName);
}
// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals3.0!
// The even numbers are: [10, 4, 84, 156]; the odd numbers are: [1, 3, 57, 43, 27, 111]
```


```swift
// 12.7 提前退出函数
// 代码清单12-13 利用 guard 语句提前退出

import Cocoa;

func printGreeting() {
print("Hello, playground.");
}
printGreeting();

func printPersonalGreetings(to names: String...) {
for name in names {
print("Hello \(name), welcome to the playground.");
}
}
printPersonalGreetings(to: "Alex","Chris","Drew","Pat");

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

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
var evens = [Int]();
var odds = [Int]();
for number in numbers {
if number % 2 == 0 {
evens.append(number);
} else {
odds.append(number);
}
}
return (evens, odds);
}

let aBunchOfNumbers = [10,1,4,3,57,43,84,27,156,111];
// 运行结果侧边栏：([10, 4, 84, 156], [1, 3, 57, 43, 27, 111])
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers);
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)");

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
return name.1; // 运行结果侧边栏：nil
}
let middleName = grabMiddleName(fromFullName: ("Matt",nil,"Mathias")); // 运行结果侧边栏：nil
if let theName = middleName {
print(theName);
}

func greetByMiddleName(fromFullName name: (first: String,
middle: String?,
last: String)) {
// guard let middleName = name.middle 这行代码把middle的值绑定到middleName常量上。
// 如果可空实例没有值，那么guard语句中的代码会执行。
guard let middleName = name.middle else {
print("Hey there!");
return;
}
print("Hey \(middleName)"); // 运行结果侧边栏："Hey Danger\n"
}
greetByMiddleName(fromFullName: ("Matt","Danger","Mathias"));

// 控制台输出：
// Hello, playground.
// Hello Alex, welcome to the playground.
// Hello Chris, welcome to the playground.
// Hello Drew, welcome to the playground.
// Hello Pat, welcome to the playground.
// 9.0 divided by 3.0 equals3.0!
// The even numbers are: [10, 4, 84, 156]; the odd numbers are: [1, 3, 57, 43, 27, 111]
// Hey Danger
```


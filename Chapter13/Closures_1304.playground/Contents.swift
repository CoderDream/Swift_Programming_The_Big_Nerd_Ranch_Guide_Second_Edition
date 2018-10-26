// 13.2 闭包表达式语法
// 代码清单13-4 利用类型推断

import Cocoa;

let volunteerCounts = [1,3,40,32,2,53,77,13];

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j; // 运行结果侧边栏：(15 times)
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending);
//// 运行结果侧边栏：[1, 2, 3, 13, 32, 40, 53, 77]

//let volunteersSorted = volunteerCounts.sorted(by: {// 运行结果侧边栏：[1, 2, 3, 13, 32, 40, 53, 77]
//    (i: Int, j: Int) -> Bool in
//    return i < j;// 运行结果侧边栏：(15 times)
//});

let volunteersSorted = volunteerCounts.sorted(by: { i, j in i < j });// 运行结果侧边栏：(16 times)

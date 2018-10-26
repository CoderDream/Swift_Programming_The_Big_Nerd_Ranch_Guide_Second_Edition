// 13.1 闭包的语法
// 代码清单13-2 对数组排序

import Cocoa;

let volunteerCounts = [1,3,40,32,2,53,77,13];

func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j; // 运行结果侧边栏：(15 times)
}
let volunteersSorted = volunteerCounts.sorted(by: sortAscending);
// 运行结果侧边栏：[1, 2, 3, 13, 32, 40, 53, 77]

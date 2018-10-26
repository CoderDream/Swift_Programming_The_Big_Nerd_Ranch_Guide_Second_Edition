// 13.3 函数作为返回值
// 代码清单13-8 通往Knowhere的路

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

//let volunteersSorted = volunteerCounts.sorted(by: { i, j in i < j });// 运行结果侧边栏：(16 times)
//let volunteersSorted = volunteerCounts.sorted(by: { $0 < $1 });// 运行结果侧边栏：(16 times)
let volunteersSorted = volunteerCounts.sorted { $0 < $1 };// 运行结果侧边栏：(16 times)

func makeTownGrand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int,
                    toExistingLights existingLights: Int) -> Int {
        return lights + existingLights;
    }
    return buildRoads;
}

// 首先创建一个变量stoplights。之所以把这个实例声明为变量，是因为接下去要修几条路，会增加镇子的红绿灯数量。
// 声明常量townPlanByAddingLightsToExistingLights，引用makeTownGrand()创建的buildRoads函数。
// 利用makeTownGrand()的返回类型中所列出的函数名就可以调用这个函数，传入要增加的l红绿灯数量（第一个参数）
// 和当前的红绿灯数量（第二个参数）。这个函数的结果是一个Int实例，再次被赋给stoplights变量。
// 最后，把新值打印到控制台。

var stoplights = 4;// 运行结果侧边栏：4
let townPlanByAddingLightsToExistingLights = makeTownGrand();// 运行结果侧边栏：(Int, Int) -> Int
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights);// 运行结果侧边栏：8
print("Knowhere has \(stoplights) stoplights.");
// 控制台输出：Knowhere has 8 stoplights.

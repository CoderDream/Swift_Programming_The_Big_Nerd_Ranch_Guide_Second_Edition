// 13.3 函数作为返回值
// 代码清单13-7 回到Knowhere

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

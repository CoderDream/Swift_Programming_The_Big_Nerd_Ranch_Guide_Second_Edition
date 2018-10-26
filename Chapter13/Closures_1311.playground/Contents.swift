// 13.4 闭包能捕获变量
// 代码清单13-11 记录发展

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

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int,
//                    toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights;
//    }
//    return buildRoads;
//}

// 首先创建一个变量stoplights。之所以把这个实例声明为变量，是因为接下去要修几条路，会增加镇子的红绿灯数量。
// 声明常量townPlanByAddingLightsToExistingLights，引用makeTownGrand()创建的buildRoads函数。
// 利用makeTownGrand()的返回类型中所列出的函数名就可以调用这个函数，传入要增加的l红绿灯数量（第一个参数）
// 和当前的红绿灯数量（第二个参数）。这个函数的结果是一个Int实例，再次被赋给stoplights变量。
// 最后，把新值打印到控制台。

//var stoplights = 4;// 运行结果侧边栏：4
//let townPlanByAddingLightsToExistingLights = makeTownGrand();// 运行结果侧边栏：(Int, Int) -> Int
//stoplights = townPlanByAddingLightsToExistingLights(4, stoplights);// 运行结果侧边栏：8

//来看一下这里有哪些修改。
//第一个变动是新的makeTownGrand(withBudget:condition:)函数，它接受两个参数。第
//一个是Int类型，表示镇子的预算。第二个是condition，接受一个函数。这个函数判断镇子的
//预算是否足够，因此它接受一个整型并返回一个布尔值。如果预算足够，那么这个函数会返回
//true。如果预算不够，那么这个函数会返回false。
//你有没有注意到makeTownGrand(withBudget:condition:)的返回值类型变了？现在的返
//回值类型是((Int, Int) -> Int)?。makeTownGrand()的上个实现返回一个函数，这个函数接受两
//个整数参数并返回一个整数。在这个修改后的版本中，makeTownGrand(withBudget:condition:)
//返回同样的函数，只不过是可空的。
func makeTownGrand(withBudget budget: Int,
                   condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int,
                        toExistingLights existingLights: Int) -> Int {
            return lights + existingLights; // 运行结果侧边栏：8
        }
        return buildRoads;  // 运行结果侧边栏：(Int, Int) -> Int
    } else {
        return nil;// 运行结果侧边栏：nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 10_000; // 运行结果侧边栏：(2 times)
}
var stoplights = 4; // 运行结果侧边栏：4
if let townPlanByAddingLightsToExistingLights = makeTownGrand(withBudget: 1_000,
                                                              condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights);
}

// 10 500的预算超出了修路的最低需求。现在应该能在侧边栏和控制台看到镇子有8个红绿灯了！
if let newTownPlanByAddingLightsToExistingLights
    = makeTownGrand(withBudget: 10_500, condition: evaluate) {
    stoplights = newTownPlanByAddingLightsToExistingLights(4, stoplights); // 运行结果侧边栏：8
}

print("Knowhere has \(stoplights) stoplights."); // 运行结果侧边栏："Knowhere has 8 stoplights.\n"

// 函数makePopulationTracker(forInitialPopulation:) 创建了函数populationTracker(growth:)。
// makePopulationTracker(forInitialPopulation:)接受一个整数参数，表示要记录的增长数；
// 并且返回一个接受一个参数的函数，这个函数返回一个整数。返回的整数是持续更新的镇子人口数totalPopulation，
// 它一开始的值是传入makePopulationTracker(forInitialPopulation:)的population。
// populationTracker(growth:)函数从闭合作用域中捕获了totalPopulation变量的值。
// populationTracker(growth:)创建后，totalPopulation变量会按照这个函数的参数所指定的大小增加。
func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int {
    var totalPopulation = population; // 运行结果侧边栏：5422
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth;
        return totalPopulation;
    }
    return populationTracker; // 运行结果侧边栏：(Int) -> Int
}
var currentPopulation = 5_422; // 运行结果侧边栏：5422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation); // 运行结果侧边栏：(Int) -> Int
// 以上代码的结果是，我们新建了一个函数growBy(_:)，它接受一个整数作为唯一的参数并
// 追踪currentPopulation。后面对growBy(_:)的调用会提供一个在初始人口数基础上的增加值。
// 控制台输出：Knowhere has 8 stoplights.

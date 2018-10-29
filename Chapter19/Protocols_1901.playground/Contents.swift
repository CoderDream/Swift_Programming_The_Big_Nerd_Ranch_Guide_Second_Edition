//19.1 格式化表格数据
// 首先声明一个函数，其参数是数组而且该数组的元素本身也是数组（即参数是数组的数组），
// 然后打印字符串到表格中，如代码清单19-1所示。data数组的每个元素都是字符串数组，
// 表示一行里的每一列，所以总行数是data.count。
// 代码清单19-1 设置表格
import Cocoa;

func printTable(_ data: [[String]]) {
    for row in data {
        // 创建空字符串
        var out = "|"; // 运行结果侧边栏：(3 times)
        // 把这一行的每一项都拼接到字符串上
        for item in row {
            out += " \(item) |"; // 运行结果侧边栏：(9 times)
        }
        // 完成，打印出来！
        print(out); // 运行结果侧边栏：(3 times)
    }
}
let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    ["Fred", "50", "20"],
];
printTable(data);
// 控制台输出：
//| Joe | 30 | 6 |
//| Karen | 40 | 18 |
//| Fred | 50 | 20 |

//19.1 格式化表格数据
// 代码清单19-3 对其各列
import Cocoa;

func printTable(_ data: [[String]], withColumnLabels columnLabels: String...) {
    // 创建包含列头的第一行
    var firstRow = "|";
    
    // 记录每一列的宽度
    var columnWidths = [Int]();
    
    for columnLabel in columnLabels {
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader;
        columnWidths.append(columnLabel.count);
    }
    print(firstRow); // 运行结果侧边栏："| Employee Name | Age | Years of Experience |\n"
    for row in data {
        // 创建空字符串
        var out = "|"
        // 把这一行的每一项都拼接到字符串上
        for (j, item) in row.enumerated() {
            let paddingNeeded = columnWidths[j] - item.count;
            let padding = repeatElement(" ", count:
                paddingNeeded).joined(separator: "");
            out += " \(padding)\(item) |";
        }
        // 完成，打印出来！
        print(out);
    }
}

let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    ["Fred", "50", "20"],
];

printTable(data, withColumnLabels: "Employee Name", "Age", "Years of Experience");
// 控制台输出：
//| Employee Name | Age | Years of Experience |
//|           Joe |  30 |                   6 |
//|         Karen |  40 |                  18 |
//|          Fred |  50 |                  20 |

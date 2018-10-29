//19.3 符合协议
// 代码清单19-10 符合CustomStringConvertible
import Cocoa;

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    func label(forColumn column: Int) -> String
    func itemFor(row: Int, column: Int) -> String
}

func printTable(_ dataSource: TabularDataSource) {
    // 创建包含列头的第一行
    var firstRow = "|";
    
    // 记录每一列的宽度
    var columnWidths = [Int]();
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i);
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader;
        columnWidths.append(columnLabel.count);
    }
    print(firstRow); // 运行结果侧边栏："| Employee Name | Age | Years of Experience |\n"
    for i in 0 ..< dataSource.numberOfRows {
        // 创建空字符串
        var out = "|"
        // 把这一行的每一项都拼接到字符串上
        for j in 0 ..< dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: i, column: j);
            let paddingNeeded = columnWidths[j] - item.count;
            let padding = repeatElement(" ", count:
                paddingNeeded).joined(separator: "");
            out += " \(padding)\(item) |";
        }
        // 完成，打印出来！
        print(out);
    }
}

//let data = [
//    ["Joe", "30", "6"],
//    ["Karen", "40", "18"],
//    ["Fred", "50", "20"],
//];
//
//printTable(data, withColumnLabels: "Employee Name", "Age", "Years of Experience");

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

// 19-10 符合CustomStringConvertible
struct Department: TabularDataSource, CustomStringConvertible {
    let name: String;
    var people = [Person]();
    
    var description: String {
        return "Department (\(name))";
    }
    
    init(name: String) {
        self.name = name;
    }
    mutating func add(_ person: Person) {
        people.append(person);
    }
    
    var numberOfRows: Int {
        return people.count;
    }
    var numberOfColumns: Int {
        return 3;
    }
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Employee Name";
        case 1: return "Age";
        case 2: return "Years of Experience";
        default: fatalError("Invalid column!");
        }
    }
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row];
        switch column {
        case 0: return person.name;
        case 1: return String(person.age);
        case 2: return String(person.yearsOfExperience);
        default: fatalError("Invalid column!");
        }
    }
}
var department = Department(name: "Engineering");
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6));
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18));
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20));

// 19-9 打印Department
printTable(department);
// 控制台输出：
//| Employee Name | Age | Years of Experience |
//|           Joe |  30 |                   6 |
//|         Karen |  40 |                  18 |
//|          Fred |  50 |                  20 |

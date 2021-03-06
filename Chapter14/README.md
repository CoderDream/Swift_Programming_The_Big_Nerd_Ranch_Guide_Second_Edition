

```swift
// 14.5 递归枚举
// 现在编译器能接受FamilyTree了，创建一个实例来为Fred的族谱建模。Fred认识的祖先不多，
// 这是好事，因为敲那么多代码创建FamilyTree的实例很累！
// 他认识自己的父母，所以需要使用twoKnownParents分支。他只认识父亲的母亲，所以对父亲
// 的祖先用oneKnownParent。他不认识母亲的双亲，也不认识祖母的双亲，所以对这些祖先都
// 要用noKnownParents，如代码清单14-33所示。
// 代码清单14-33 创建FamilyTree
import Cocoa

// 代码清单14-8 增加成员值

// 也可以不用原始值的默认行为。需要的话，可以给每个成员指定原始值，如代码清单14-13所示。
// 代码清单14-13 指定原始值
enum TextAlignment: Int {
    case left       = 20
    case right      = 30
    case center     = 40
    case justify    = 50
}

// 因为枚举会声明新类型，所以现在可以创建这个类型的实例了
// 代码清单14-2 创建TextAlignment的实例
//var alignment: TextAlignment = TextAlignment.left

// 尽管TextAlignment是自定义类型，编译器还是能够判断alignment的类型。因此可以省略alignment的显式类型声明
// 14-3 利用类型推断
//var alignment = TextAlignment.left

// 编译器对枚举的类型推断能力不仅限于变量声明。如果一个变量已经明确是某个特定的枚举类型，
// 就可以在给变量赋值时省略枚举名，如代码清单14-4所示。
// 代码清单14-4 推断枚举类型
// alignment = .right

// 注意，代码尽管还能运行，但是会输出错误的值。alignment变量设置为justify，
// 但是switch语句打印了center aligned。
var alignment = TextAlignment.justify

// 打印一些插值字符串来确认这一点，如代码清单14-12所示。
// 代码清单14-12 确认原始值
print("Left has raw value \(TextAlignment.left.rawValue)")
print("Right has raw value \(TextAlignment.right.rawValue)")
print("Center has raw value \(TextAlignment.center.rawValue)")
print("Justify has raw value \(TextAlignment.justify.rawValue)")
print("The alignment variable has raw value \(alignment.rawValue)")

// 每个带原始值的枚举类型都可以用rawValue参数创建，并返回可空枚举，如代码清单14-14所示。
// 代码清单14-14 把原始值转化回枚举类型
// 创建一个原始值
//let myRawValue = 20

// 试着把myRawValue改成不存在的原始值，看一下无法转化时的􀹖息，如代码清单14-15所示。
// 代码清单14-15 试一下不存在的值
let myRawValue = 100

// 尝试将原始值转化为TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // 转化成功
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    // 转化失败
    print("\(myRawValue) has no corresponding TextAlignment case")
}

// 在传递枚举给函数或比较枚举时可以省略枚举类型
// 代码清单14-5 在比较枚举值时利用类型推断
//if alignment == .right {
//    print("we should right-align the text!")
//}

// 用if语句可以比较枚举值，不过通常使用switch语句处理。
// 用switch将对齐信息用人类可读的方式打印出来
// 代码清单14-6 切换到switch

// 对枚举类型使用switch时也可以用default分支，如代码清单14-7所示。
// 代码清单14-7 把居中对齐作为默认选项

// 会产生一个编译时错误，告诉你switch语句没有被全覆盖。
// Switch must be exhaustive
switch alignment {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    // default:
    print("center aligned")
case .justify:
    print("justified")
}

// Swift支持一系列类型，包括所有的内建数值类型和字符串。
// 创建一个新的枚举，用String作为原始值类型，如代码清单14-16所示。
// 代码清单14-16 创建带字符串原始值的枚举

// 如果省略原始值，Swift会使用成员本身的名字。修改ProgrammingLanguage，删除和成员名一样的原始值，如代码清单14-17所示。
// 代码清单14-17 使用默认的字符串原始值
enum ProgrammingLanguage: String {
    case swift      //= "swift"
    case objectiveC = "objective-c"
    case c          //= "c"
    case cpp        //= "c++"
    case java       //= "java"
}
let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")

// 在Swift中，方法可以和枚举关联
// 代码清单14-18 电灯泡可以开关

// 增加一个计算表面温度的方法，如代码清单14-19所示。
// 代码清单14-19 实现获取温度的方法

// 另一个有用的方法是开关电灯泡。要开关电灯泡，需要修改self的状态使之从on到off或者从off到on。
// 试着增加一个toggle()方法，这个方法不需要参数也不返回任何东西，如代码清单14-21所示。
// 代码清单14-21 尝试开关


enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
            
        case .off:
            return ambient
        }
    }
    
    // 输入这些代码后，编译器会产生错误，告诉你不能在方法内对self赋值。
    
    // 在Swift中，枚举是值类型（value type），而值类型的方法不能对self进行修改。
    // 如果希望值类型的方法能修改self，需要标记这个方法为mutating。在代码中加上这个标记，如代码清单14-22所示。
    // 代码清单14-22 标记toggle()方法为mutating
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
            
        case .off:
            self = .on
        }
    }
}

// 创建一个变量代表电灯泡，调用新实现的方法，如代码清单14-20所示。
// 代码清单14-19 实现获取温度的方法
var bulb = Lightbulb.on // 运行结果侧边栏：on
let ambientTemperature = 77.0 // 运行结果侧边栏：77
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: // 运行结果侧边栏：227
    ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)") // 运行结果侧边栏："the bulb's temperature is 227.0\n"

// 现在可以开关电灯泡并看到关掉时的温度了，如代码清单14-23所示。
// 代码清单14-23 关掉电灯泡
bulb.toggle() // 运行结果侧边栏：off
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature) // 运行结果侧边栏：77
print("the bulb's temperature is \(bulbTemperature)") // 运行结果侧边栏："the bulb's temperature is 77.0\n"

// Swift还提供了一种强大的枚举：带关联值的成员。关联值能让你把数据附在枚举实例上；不同的成员
// 可以有不同类型的关联值。
// 创建一个枚举用来记录一些基本图形的尺寸。每种图形有不同的属性。要表示正方形，只需
// 要一个值（边长）。要表示长方形，则需要两个值：宽和高。如代码清单14-24所示。
// 代码清单14-24 设置ShapeDimensions

// 不是所有的枚举成员都必须有关联值。比如要增加一个point成员。由于几何点不存在尺寸，
// 增加point并不需要关联值类型。
// 增加point并更新area()方法来计算其面积，如代码清单14-28所示。
// 代码清单14-28 设置Point
enum ShapeDimensions {
    // 点没有关联值--它没有尺寸
    case point
    
    // 正方形的关联值是边长
    case square(side: Double)
    
    // 长方形的关联值是宽和高
    case rectangle(width: Double, height: Double)
    
    // 在这里，switch的分支利用了Swift的模式匹配（pattern matching）把self的关联值绑定到新变量上。
    func area() -> Double {
        switch self {
        case .point:
            return 0
            
        case let .square(side: side):
            return side * side
            
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

// 要创建ShapeDimensions的实例，必须指定成员和相应的关联值，如代码清单14-25所示。
// 代码清单14-25 创建图形
// 这里创建了一个边长是10单位的正方形，还有5单位×10单位的长方形。

// 现在创建一个点的实例，确认area()像预期那样工作，如代码清单14-29所示。
// 代码清单14-29 点的面积是多少
var squareShape = ShapeDimensions.square(side: 10.0) // 运行结果侧边栏：square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0) // 运行结果侧边栏：rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point // 运行结果侧边栏: point

// 对实例调用area()方法来看一下实际效果，如代码清单14-27所示。
// 代码清单14-27 计算面积
print("square's area = \(squareShape.area())") // 运行结果侧边栏："square's area = 100.0\n"
print("rectangle's area = \(rectShape.area())") // 运行结果侧边栏："rectangle's area = 50.0\n"
print("point's area = \(pointShape.area())") // 运行结果侧边栏："point's area = 0.0\n"

// 为族谱建模很难，因为对于某个人的父母，你可能一个也不认识，也可能只认识其中之一，
// 还有可能两个都认识。如果认识一个或两个都认识，还需要记录他们的祖先。试着创建一个枚举
// 用来尽量完整地构建族谱，如代码清单14-30所示。
// 代码清单14-30 尝试定义FamilyTree

// 为了解决这个问题，Swift引入了一个间接层。我们不再直接判断oneKnownParent需要多少内存
//（这样会n绕回无限递归），而是用关键字indirect告诉编译器把枚举的数据放到一个指针指向的地方。
// 我们在本书中不过多讨论指针，因为Swift不会让你直接接触指针。在本例中，除了让FamilyTree在
// 幕后用指针之外不需要做任何事。之后就可以为族谱建模了，如代码清单14-31所示。
// 代码清单14-31 正确的FamilyTree

// 值得注意的是，其实不需要把整个枚举标记为间接：也可以把递归的成员单独标记为间接。
// 现在这样修改一下，如代码清单14-32所示。
// 代码清单14-32 FamilyTree的间接分支
enum FamilyTree {
    case noKnownParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
        motherName: String, motherAncestors: FamilyTree)
}

// 指针是怎么解决“无限内存”问题的？编译器现在知道应该保存一个指向关联数据的指针，
// 把数据放在内存中的其他地方而不是让FamilyTree的实例有足够的空间放下数据。现在
// FamilyTree的实例在64位架构下有8字节，即一个指针的长度。

// 上面的代码报错：
// Recursive enum 'FamilyTree' is not marked 'indirect'
// FamilyTree是递归的，因为其成员的关联值类型还是FamilyTree。

// 现在编译器能接受FamilyTree了，创建一个实例来为Fred的族谱建模。Fred认识的祖先不多，
// 这是好事，因为敲那么多代码创建FamilyTree的实例很累！
// 他认识自己的父母，所以需要使用twoKnownParents分支。他只认识父亲的母亲，所以对父亲
// 的祖先用oneKnownParent。他不认识母亲的双亲，也不认识祖母的双亲，所以对这些祖先都
// 要用noKnownParents，如代码清单14-33所示。
// 代码清单14-33 创建FamilyTree
let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnownParents),
    motherName: "Marsha",
    motherAncestors: .noKnownParents)
// twoKnownParents(fatherName: "Fred Sr.",
// fatherAncestors: __lldb_expr_10.FamilyTree.oneKnownParent(name: "Beth", ancestors:
//    __lldb_expr_10.FamilyTree.noKnownParents),
// motherName: "Marsha",
// motherAncestors: __lldb_expr_10.FamilyTree.noKnownParents)

//控制台输出：
//Left has raw value 20
//Right has raw value 30
//Center has raw value 40
//Justify has raw value 50
//The alignment variable has raw value 50
//100 has no corresponding TextAlignment case
//justified
//My favorite programming language is swift
//the bulb's temperature is 227.0
//the bulb's temperature is 77.0
//square's area = 100.0
//rectangle's area = 50.0
//point's area = 0.0



```

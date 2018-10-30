// 14.3 方法
// 现在可以开关电灯泡并看到关掉时的温度了，如代码清单14-23所示。
// 代码清单14-23 关掉电灯泡
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
print("the bulb's temperature is \(bulbTemperature)")// 运行结果侧边栏："the bulb's temperature is 77.0\n"

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


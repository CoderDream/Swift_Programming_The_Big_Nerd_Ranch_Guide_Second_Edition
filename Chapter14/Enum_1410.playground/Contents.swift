// 14.1 基本枚举
// 把switch改回原来的样子
// 代码清单14-10 包含所有成员值
import Cocoa

// 代码清单14-8 增加成员值
enum TextAlignment {
    case left
    case right
    case center
    case justify
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


// 14.1 基本枚举
// 在传递枚举给函数或比较枚举时可以省略枚举类型
// 代码清单14-5 在比较枚举值时利用类型推断
import Cocoa

enum TextAlignment {
    case left
    case right
    case center
}

// 因为枚举会声明新类型，所以现在可以创建这个类型的实例了
// 代码清单14-2 创建TextAlignment的实例
//var alignment: TextAlignment = TextAlignment.left

// 尽管TextAlignment是自定义类型，编译器还是能够判断alignment的类型。因此可以省略alignment的显式类型声明
// 14-3 利用类型推断
var alignment = TextAlignment.left

// 编译器对枚举的类型推断能力不仅限于变量声明。如果一个变量已经明确是某个特定的枚举类型，
// 就可以在给变量赋值时省略枚举名，如代码清单14-4所示。
// 代码清单14-4 推断枚举类型
alignment = .right

// 在传递枚举给函数或比较枚举时可以省略枚举类型
// 代码清单14-5 在比较枚举值时利用类型推断
if alignment == .right {
    print("we should right-align the text!")
}

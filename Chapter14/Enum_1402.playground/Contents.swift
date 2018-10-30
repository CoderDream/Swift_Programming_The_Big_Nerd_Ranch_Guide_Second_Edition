// 14.1 基本枚举
// 因为枚举会声明新类型，所以现在可以创建这个类型的实例了
// 代码清单14-2 创建TextAlignment的实例
import Cocoa

enum TextAlignment {
    case left
    case right
    case center
}

// 因为枚举会声明新类型，所以现在可以创建这个类型的实例了
// 代码清单14-2 创建TextAlignment的实例
var alignment: TextAlignment = TextAlignment.left

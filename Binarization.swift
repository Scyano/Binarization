
import Foundation


protocol BaseConvertible {
    associatedtype Base
    var bz: Base { get }
    func test()
}

extension BaseConvertible {
    var bz: Binarization<Self> {
        return Binarization(self)
    }
    func test() {
        print(Self.self)
    }
}

class Binarization<Base> {
    var base: Base
    init(_ base: Base) {
        self.base = base
    }
}

extension UIButton: BaseConvertible {}
extension UIImageView: BaseConvertible {}

extension Binarization where Base: UIButton {
    func setImage() {
        
    }
}

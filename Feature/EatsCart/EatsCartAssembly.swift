import Foundation
import EatsTools
import UIKit

public final class EatsCartAssembly {

    private let resolver: Resolver

    public init(parentResolver: Resolver) {
        resolver = Resolver(child: parentResolver)
    }
}

public extension EatsCartAssembly {

    /// Корзина
    func cart() -> UIViewController {
        // Some settings up
        return UIViewController(nibName: nil, bundle: nil)
    }

    /// Подтверждение
    func checkout() -> UIViewController {
        // Some settings up
        return UIViewController(nibName: nil, bundle: nil)
    }
}

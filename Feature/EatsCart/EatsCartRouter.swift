import Foundation
import EatsRouter

public protocol EatsCartRouter: Router {

    var cartAssembly: EatsCartAssembly { get }

    /// Переход из корзины в товар
    func cart_shopItem(id: String) -> Route
}

extension EatsCartRouter {

    /// Переход с главной магазина в товар
    func cart_checkout() -> Route {
        let vc = cartAssembly.checkout()
        return PushRoute(to: vc)
    }
}

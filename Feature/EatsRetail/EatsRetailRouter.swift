import UIKit
import EatsRouter

public protocol EatsRetailRouter: Router {

    var retailAssembly: EatsRetailAssembly { get }

    /// Переход с главной магазина в корзину
    func shopHome_cart() -> Route

    /// Переход из товара в корзину
    func shopItem_cart() -> Route
}

extension EatsRetailRouter {

    /// Переход с главной магазина в товар
    func shopHome_shopItem(id: String) -> Route {
        let vc = retailAssembly.shopItem(id: id)
        return ModalRoute(to: vc)
    }

    /// Переход из одного товара в длругой
    func shopItem_shopItem(id: String) -> Route {
        let vc = retailAssembly.shopItem(id: id)
        return PushRoute(to: vc)
    }
}

import EatsCart
import EatsRouter
import EatsRetail

extension MainRouter: EatsCartRouter {

    func cart_shopItem(id: String) -> any Route {
        let vc = retailAssembly.shopItem(id: id)
        return ModalRoute(to: vc)
    }
}

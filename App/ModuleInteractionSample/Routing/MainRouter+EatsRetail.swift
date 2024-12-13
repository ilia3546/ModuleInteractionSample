import EatsCart
import EatsRouter
import EatsRetail

extension MainRouter: EatsRetailRouter {

    func shopHome_cart() -> any Route {
        let vc = cartAssembly.cart()
        return ModalRoute(to: vc)
    }
    
    func shopItem_cart() -> any Route {
        let vc = cartAssembly.cart()
        return PushRoute(to: vc)
    }
}

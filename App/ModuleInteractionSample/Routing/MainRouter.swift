import EatsCart
import EatsRetail
import EatsTools
import UIKit

final class MainRouter {

    let cartAssembly: EatsCartAssembly
    let retailAssembly: EatsRetailAssembly

    init(
        cartAssembly: EatsCartAssembly,
        retailAssembly: EatsRetailAssembly
    ) {
        self.cartAssembly = cartAssembly
        self.retailAssembly = retailAssembly
    }
}

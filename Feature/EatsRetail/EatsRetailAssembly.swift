import Foundation
import EatsTools
import UIKit

public final class EatsRetailAssembly {

    private let resolver: Resolver

    public init(parentResolver: Resolver) {
        resolver = Resolver(child: parentResolver)
        registerInternalDependencies()
    }

    private func registerInternalDependencies() {
        resolver.register(EatsRetailNetworkService.self, factory: { r in
            EatsRetailNetworkService(
                fileHelper: r.resolve(FileHelper.self)
            )
        })
    }
}

public extension EatsRetailAssembly {

    /// Список магазинов
    func shopList() -> UIViewController {
        // Some settings up
        let router = resolver.resolve(EatsRetailRouter.self)
        return UIViewController(nibName: nil, bundle: nil)
    }

    /// Экран магазина
    func shopHome(slug: String) -> UIViewController {
        // Some settings up
        let router = resolver.resolve(EatsRetailRouter.self)
        return UIViewController(nibName: nil, bundle: nil)
    }

    /// Экран товара
    func shopItem(id: String) -> UIViewController {
        // Some settings up
        let router = resolver.resolve(EatsRetailRouter.self)
        let networkService = resolver.resolve(EatsRetailNetworkService.self)
        return UIViewController(nibName: nil, bundle: nil)
    }
}

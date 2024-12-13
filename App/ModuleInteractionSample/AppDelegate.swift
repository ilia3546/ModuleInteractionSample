import UIKit
import EatsTools
import EatsRetail

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let retailAssembly = Resolver.main.resolve(EatsRetailAssembly.self)

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window?.rootViewController = retailAssembly.shopList()
        window?.makeKeyAndVisible()
        return true
    }
}


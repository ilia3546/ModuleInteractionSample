import EatsTools
import EatsCart
import EatsRetail

extension Resolver: ResolverRegistering {

    public static func registerAllServices() {
        register(FileHelper.self) {
            FileHelper(name: "MyAwesome")
        }
        register(EatsCartAssembly.self) { resolver in
            EatsCartAssembly(parentResolver: resolver)
        }
        register(EatsRetailAssembly.self) { resolver in
            EatsRetailAssembly(parentResolver: resolver)
        }
        register(MainRouter.self) { resolver in
            MainRouter(
                cartAssembly: resolver.resolve(EatsCartAssembly.self),
                retailAssembly: resolver.resolve(EatsRetailAssembly.self)
            )
        }
        .implements(EatsRetailRouter.self)
        .implements(EatsCartRouter.self)
    }
}

import UIKit

public struct PushRoute: Route {

    public let target: UIViewController

    public init(to target: UIViewController) {
        self.target = target
    }
}

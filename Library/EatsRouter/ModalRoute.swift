import UIKit

public struct ModalRoute: Route {

    public let target: UIViewController

    public init(to target: UIViewController) {
        self.target = target
    }
}

import UIKit

extension NSDirectionalEdgeInsets {    
    public static let `default`: NSDirectionalEdgeInsets = {
        let window = UIWindow()
        let vc = UIViewController()
        window.rootViewController = vc
        window.makeKeyAndVisible()
        
        return vc.view.directionalLayoutMargins
    }()
}

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController(with: [
            (Example1ViewController(), "Example 1"),
            (Example2ViewController(), "Example 2")
        ])
        window?.makeKeyAndVisible()
        return true
    }

    private func tabBarController(with viewControllers: [(UIViewController, String)]) -> UITabBarController {
        let tabBarController = UITabBarController(nibName: nil, bundle: nil)
        tabBarController.viewControllers = viewControllers.map { (viewController, title) in
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.tabBarItem.title = title
            navigationController.tabBarItem.image = UIColor.black.image(size: CGSize(width: 30, height: 30))
            return navigationController
        }
        return tabBarController
    }

}

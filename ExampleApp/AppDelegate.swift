import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabBarController(with: [
            Example1ViewController()
        ])
        window?.makeKeyAndVisible()
        return true
    }

    private func tabBarController(with viewControllers: [UIViewController]) -> UITabBarController {
        let tabBarController = UITabBarController(nibName: nil, bundle: nil)
        tabBarController.viewControllers = viewControllers.map { UINavigationController(rootViewController: $0) }
        return tabBarController
    }

}

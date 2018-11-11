import UIKit
import ScrollViewLayout
import ScrollViewController

class Example3ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: View

    override func loadView() {
        view = UIView(frame: .zero)
        view.backgroundColor = .white
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        embed(scrollViewController)
        scrollViewController.scrollView.alwaysBounceVertical = true
        scrollViewController.scrollView.keyboardDismissMode = .interactive
        let exampleView = Example3View()
        scrollViewController.contentView = exampleView
        exampleView.textView.text = .loremIpsum
        topViewLayoutController = ScrollViewLayoutController(
            for: exampleView.topView,
            in: scrollViewController.scrollView,
            using: ScrollViewTopBackgroundLayout()
        )
        bottomViewLayoutController = ScrollViewLayoutController(
            for: exampleView.bottomView,
            in: scrollViewController.scrollView,
            using: ScrollViewBottomBackgroundLayout()
        )
    }

    // MARK: Layout

    private var topViewLayoutController: ScrollViewLayoutControlling?
    private var bottomViewLayoutController: ScrollViewLayoutControlling?

    // MARK: Private

    private lazy var scrollViewController = ScrollViewController()

    private func embed(_ viewController: UIViewController) {
        addChild(viewController)
        view.addSubview(viewController.view)
        viewController.view.translatesAutoresizingMaskIntoConstraints = false
        viewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        viewController.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        viewController.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        viewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        viewController.didMove(toParent: self)
    }

}

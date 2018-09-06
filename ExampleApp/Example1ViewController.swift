import UIKit
import ScrollViewLayout

class Example1ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: View

    override func loadView() {
        view = Example1View()
        topViewLayoutController = ScrollViewLayoutController(
            for: exampleView.topView,
            in: exampleView.scrollView,
            using: ScrollViewTopBackgroundLayout()
        )
        bottomViewLayoutController = ScrollViewLayoutController(
            for: exampleView.bottomView,
            in: exampleView.scrollView,
            using: ScrollViewBottomBackgroundLayout()
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        exampleView.textLabel.text = .loremIpsum
    }

    private var exampleView: Example1View! {
        return view as? Example1View
    }

    // MARK: Layout

    private var topViewLayoutController: ScrollViewLayoutControlling?
    private var bottomViewLayoutController: ScrollViewLayoutControlling?

}

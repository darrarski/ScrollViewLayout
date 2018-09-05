import UIKit
import ScrollViewLayout

class ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: View

    override func loadView() {
        view = View()
        topViewLayoutController = ScrollViewLayoutController(
            for: theView.topView,
            in: theView.scrollView,
            using: ScrollViewTopBackgroundLayout()
        )
        bottomViewLayoutController = ScrollViewLayoutController(
            for: theView.bottomView,
            in: theView.scrollView,
            using: ScrollViewBottomBackgroundLayout()
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        theView.textLabel.text = .loremIpsum
    }

    private var theView: View! {
        return view as? View
    }

    // MARK: Layout

    private var topViewLayoutController: ScrollViewLayoutControlling?
    private var bottomViewLayoutController: ScrollViewLayoutControlling?

}

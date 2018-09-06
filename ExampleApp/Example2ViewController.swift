import UIKit
import ScrollViewLayout

class Example2ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: View

    override func loadView() {
        view = Example2View()
        headerLayoutController = ScrollViewLayoutController(
            for: exampleView.headerView,
            in: exampleView.scrollView,
            using: ScrollViewLayoutUpdater { [weak self] _, scrollView in
                self?.exampleView.headerTop.constant
                    = min(0, scrollView.contentOffset.y)
            }
        )
        footerLayoutController = ScrollViewLayoutController(
            for: exampleView.footerView,
            in: exampleView.scrollView,
            using: ScrollViewLayoutUpdater { [weak self] _, scrollView in
                self?.exampleView.footerBottom.constant
                    = max(0, scrollView.frame.height + scrollView.contentOffset.y - scrollView.contentSize.height)
            }
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        exampleView.textLabel.text = .loremIpsum
    }

    private var exampleView: Example2View! {
        return view as? Example2View
    }

    // MARK: Layout

    private var headerLayoutController: ScrollViewLayoutControlling?
    private var footerLayoutController: ScrollViewLayoutControlling?

}

@testable import ScrollViewLayout

class ScrollViewLayoutUpdatingDouble: ScrollViewLayoutUpdating {

    var didUpdateLayoutForView: UIView?
    var didUpdateLayoutInScrollView: UIScrollView?

    // MARK: ScrollViewLayoutUpdating

    func updateLayout(for view: UIView, in scrollView: UIScrollView) {
        didUpdateLayoutForView = view
        didUpdateLayoutInScrollView = scrollView
    }

}

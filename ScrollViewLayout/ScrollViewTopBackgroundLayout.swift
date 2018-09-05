import UIKit

public final class ScrollViewTopBackgroundLayout: ScrollViewLayoutUpdating {

    public init() {}

    // MARK: ScrollViewLayoutUpdating

    public func updateLayout(for view: UIView, in scrollView: UIScrollView) {
        view.translatesAutoresizingMaskIntoConstraints = true
        view.frame = CGRect(
            x: 0,
            y: scrollView.contentOffset.y,
            width: scrollView.frame.width,
            height: max(0, -scrollView.contentOffset.y)
        )
    }

}

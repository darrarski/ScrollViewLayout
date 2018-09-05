import UIKit

public class ScrollViewBottomBackgroundLayout: ScrollViewLayoutUpdating {

    public init() {}

    // MARK: ScrollViewLayoutUpdating

    public func updateLayout(for view: UIView, in scrollView: UIScrollView) {
        view.translatesAutoresizingMaskIntoConstraints = true
        view.frame = CGRect(
            x: 0,
            y: scrollView.contentSize.height,
            width: scrollView.frame.width,
            height: max(0, scrollView.frame.height + scrollView.contentOffset.y - scrollView.contentSize.height)
        )
    }

}

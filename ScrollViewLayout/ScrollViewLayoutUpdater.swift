import UIKit

public class ScrollViewLayoutUpdater: ScrollViewLayoutUpdating {

    public init(_ update: @escaping (UIView, UIScrollView) -> Void) {
        self.update = update
    }

    // MARK: ScrollViewLayoutUpdating

    public func updateLayout(for view: UIView, in scrollView: UIScrollView) {
        update(view, scrollView)
    }

    // MARK: Private

    private let update: (UIView, UIScrollView) -> Void

}

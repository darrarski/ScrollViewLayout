import UIKit

/// Generic UIScrollView's subview layout updater
public final class ScrollViewLayoutUpdater: ScrollViewLayoutUpdating {

    /// Instantiate updater
    ///
    /// - Parameter update: layout updating closure
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

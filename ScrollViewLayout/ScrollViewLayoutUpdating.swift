import UIKit

/// UIScrollView's subview layout updater protocol
public protocol ScrollViewLayoutUpdating {
    /// Update layout
    ///
    /// - Parameters:
    ///   - view: view that needs to be laid out
    ///   - scrollView: scroll view that contains the view
    func updateLayout(for view: UIView, in scrollView: UIScrollView)
}

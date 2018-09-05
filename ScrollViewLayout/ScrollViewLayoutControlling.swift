import UIKit

/// UIScrollView's subview layout controller protocol
public protocol ScrollViewLayoutControlling {
    /// Instantiate controller
    ///
    /// - Parameters:
    ///   - view: view that needs to laid out
    ///   - scrollView: scroll view that contains the view
    ///   - updater: layout updater
    init(for view: UIView, in scrollView: UIScrollView, using updater: ScrollViewLayoutUpdating)
}

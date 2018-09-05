import UIKit

public protocol ScrollViewLayoutControlling {
    init(for view: UIView, in scrollView: UIScrollView, using updater: ScrollViewLayoutUpdating)
}

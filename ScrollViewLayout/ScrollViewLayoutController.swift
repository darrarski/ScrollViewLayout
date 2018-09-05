import UIKit

/// UIScrollView's subview layout controller
public final class ScrollViewLayoutController: ScrollViewLayoutControlling {

    // MARK: ScrollViewLayoutControlling

    public required init(for view: UIView, in scrollView: UIScrollView, using updater: ScrollViewLayoutUpdating) {
        self.view = view
        self.scrollView = scrollView
        self.updater = updater
        setupObservers()
    }

    // MARK: Private

    private let view: UIView
    private let scrollView: UIScrollView
    private let updater: ScrollViewLayoutUpdating
    private var observers: [NSKeyValueObservation]?

    private func setupObservers() {
        let handler: (UIScrollView, Any) -> Void = { [weak self] _, _ in
            self?.updateLayout()
        }
        observers = [
            scrollView.observe(\UIScrollView.contentOffset, options: [.new], changeHandler: handler),
            scrollView.observe(\UIScrollView.contentSize, options: [.new], changeHandler: handler),
            scrollView.observe(\UIScrollView.contentInset, options: [.new], changeHandler: handler)
        ]
    }

    private func updateLayout() {
        updater.updateLayout(for: view, in: scrollView)
    }

}

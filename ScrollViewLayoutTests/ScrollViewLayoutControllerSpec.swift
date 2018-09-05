import Quick
import Nimble
@testable import ScrollViewLayout

class ScrollViewLayoutControllerSpec: QuickSpec {

    override func spec() {
        describe("ScrollViewLayoutController") {
            var sut: ScrollViewLayoutController!
            var view: UIView!
            var scrollView: UIScrollView!
            var updater: ScrollViewLayoutUpdatingDouble!

            beforeEach {
                view = UIView(frame: .zero)
                scrollView = UIScrollView(frame: .zero)
                updater = ScrollViewLayoutUpdatingDouble()
                sut = ScrollViewLayoutController(for: view, in: scrollView, using: updater)
                _ = sut
            }

            context("when content offset changes") {
                beforeEach {
                    scrollView.contentOffset = .zero
                }

                it("should update layout for view") {
                    expect(updater.didUpdateLayoutForView) === view
                }

                it("should update layout in scroll view") {
                    expect(updater.didUpdateLayoutInScrollView) === scrollView
                }
            }

            context("when content size changes") {
                beforeEach {
                    scrollView.contentSize = .zero
                }

                it("should update layout for view") {
                    expect(updater.didUpdateLayoutForView) === view
                }

                it("should update layout in scroll view") {
                    expect(updater.didUpdateLayoutInScrollView) === scrollView
                }
            }

            context("when content inset changes") {
                beforeEach {
                    scrollView.contentInset = .zero
                }

                it("should update layout for view") {
                    expect(updater.didUpdateLayoutForView) === view
                }

                it("should update layout in scroll view") {
                    expect(updater.didUpdateLayoutInScrollView) === scrollView
                }
            }
        }
    }

}

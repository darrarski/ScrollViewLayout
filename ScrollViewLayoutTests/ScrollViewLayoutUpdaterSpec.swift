import Quick
import Nimble
@testable import ScrollViewLayout

class ScrollViewLayoutUpdaterSpec: QuickSpec {

    override func spec() {
        describe("ScrollViewLayoutUpdater") {
            var sut: ScrollViewLayoutUpdater!
            var didUpdateLayoutForView: UIView?
            var didUpdateLayoutInScrollView: UIScrollView?

            beforeEach {
                sut = ScrollViewLayoutUpdater { view, scrollView in
                    didUpdateLayoutForView = view
                    didUpdateLayoutInScrollView = scrollView
                }
            }

            afterEach {
                didUpdateLayoutForView = nil
                didUpdateLayoutInScrollView = nil
            }

            context("when updating layout") {
                var view: UIView!
                var scrollView: UIScrollView!

                beforeEach {
                    view = UIView(frame: .zero)
                    scrollView = UIScrollView(frame: .zero)
                    sut.updateLayout(for: view, in: scrollView)
                }

                it("should update layout for view") {
                    expect(didUpdateLayoutForView) === view
                }

                it("should update layout in scroll view") {
                    expect(didUpdateLayoutInScrollView) === scrollView
                }
            }
        }
    }

}

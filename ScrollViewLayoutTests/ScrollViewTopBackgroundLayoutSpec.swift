import Quick
import Nimble
@testable import ScrollViewLayout

class ScrollViewTopBackgroundLayoutSpec: QuickSpec {

    override func spec() {
        describe("ScrollViewTopBackgroundLayout") {
            var sut: ScrollViewTopBackgroundLayout!

            beforeEach {
                sut = ScrollViewTopBackgroundLayout()
            }

            describe("scroll view") {
                var scrollView: UIScrollView!

                beforeEach {
                    scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
                }

                describe("with huge content and some insets") {
                    beforeEach {
                        scrollView.contentSize = CGSize(width: 100, height: 300)
                        scrollView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 50, right: 0)
                    }

                    describe("scrolled to top") {
                        beforeEach {
                            scrollView.contentOffset = CGPoint(x: 0, y: -50)
                        }

                        context("when updating layout") {
                            var view: UIView!

                            beforeEach {
                                view = UIView(frame: .zero)
                                sut.updateLayout(for: view, in: scrollView)
                            }

                            it("should view translate autoresizing mask into constraints") {
                                expect(view.translatesAutoresizingMaskIntoConstraints) == true
                            }

                            it("should view have correct frame") {
                                expect(view.frame) == CGRect(x: 0, y: -50, width: 100, height: 50)
                            }
                        }
                    }

                    describe("scrolled to bottom") {
                        beforeEach {
                            scrollView.contentOffset = CGPoint(x: 0, y: 150)
                        }

                        context("when updating layout") {
                            var view: UIView!

                            beforeEach {
                                view = UIView(frame: .zero)
                                sut.updateLayout(for: view, in: scrollView)
                            }

                            it("should view have correct frame") {
                                expect(view.frame) == CGRect(x: 0, y: 150, width: 100, height: 0)
                            }
                        }
                    }

                    describe("scrolled above top") {
                        beforeEach {
                            scrollView.contentOffset = CGPoint(x: 0, y: -100)
                        }

                        context("when updating layout") {
                            var view: UIView!

                            beforeEach {
                                view = UIView(frame: .zero)
                                sut.updateLayout(for: view, in: scrollView)
                            }

                            it("should view have correct frame") {
                                expect(view.frame) == CGRect(x: 0, y: -100, width: 100, height: 100)
                            }
                        }
                    }
                }
            }
        }
    }

}

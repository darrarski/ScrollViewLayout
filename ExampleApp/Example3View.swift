import UIKit

class Example3View: UIView {

    init() {
        super.init(frame: .zero)
        setupSubviews()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: Subviews

    let topView = UIView(frame: .zero)
    let textView = UITextView(frame: .zero)
    let bottomView = UIView(frame: .zero)

    private func setupSubviews() {
        topView.backgroundColor = .red
        textView.isScrollEnabled = false
        textView.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 21))
        bottomView.backgroundColor = .blue

        addSubview(topView)
        addSubview(textView)
        addSubview(bottomView)
    }

    // MARK: Layout

    private func setupLayout() {
        textView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: topAnchor),
            textView.leadingAnchor.constraint(equalTo: leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: trailingAnchor),
            textView.bottomAnchor.constraint(equalTo: bottomAnchor),
            textView.widthAnchor.constraint(equalTo: widthAnchor)
        ])
    }

}

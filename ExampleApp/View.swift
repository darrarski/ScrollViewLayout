import UIKit

class View: UIView {

    init() {
        super.init(frame: .zero)
        backgroundColor = .white
        setupSubviews()
        setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: Subviews

    let scrollView = UIScrollView(frame: .zero)
    let topView = UIView(frame: .zero)
    let textLabel = UILabel(frame: .zero)
    let bottomView = UIView(frame: .zero)

    private func setupSubviews() {
        scrollView.alwaysBounceVertical = true
        topView.backgroundColor = .red
        textLabel.numberOfLines = 0
        textLabel.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 21))
        bottomView.backgroundColor = .blue

        addSubview(scrollView)
        scrollView.addSubview(topView)
        scrollView.addSubview(textLabel)
        scrollView.addSubview(bottomView)
    }

    // MARK: Layout

    private func setupLayout() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: scrollView.topAnchor),
            textLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            textLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            textLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
    }

}

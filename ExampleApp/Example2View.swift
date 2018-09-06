import UIKit

class Example2View: UIView {

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
    let headerView = UIImageView(frame: .zero)
    let textLabel = UILabel(frame: .zero)
    let footerView = UIImageView(frame: .zero)

    private func setupSubviews() {
        scrollView.alwaysBounceVertical = true
        headerView.image = UIImage(contentsOfFile: Bundle.main.path(forResource: "cover_image", ofType: "jpg")!)
        headerView.contentMode = .scaleAspectFill
        headerView.clipsToBounds = true
        textLabel.numberOfLines = 0
        textLabel.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 21))
        footerView.image = headerView.image
        footerView.contentMode = .scaleAspectFill
        footerView.clipsToBounds = true

        addSubview(scrollView)
        scrollView.addSubview(headerView)
        scrollView.addSubview(textLabel)
        scrollView.addSubview(footerView)
    }

    // MARK: Layout

    private(set) var headerTop: NSLayoutConstraint!
    private(set) var footerBottom: NSLayoutConstraint!

    private func setupLayout() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerTop = headerView.topAnchor.constraint(equalTo: scrollView.topAnchor)
        NSLayoutConstraint.activate([
            headerTop,
            headerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            headerView.bottomAnchor.constraint(equalTo: scrollView.topAnchor, constant: 100)
        ])

        textLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            textLabel.topAnchor.constraint(equalTo: headerView.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            textLabel.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])

        footerView.translatesAutoresizingMaskIntoConstraints = false
        footerBottom = footerView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        NSLayoutConstraint.activate([
            footerView.topAnchor.constraint(equalTo: textLabel.bottomAnchor),
            footerView.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -100),
            footerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            footerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            footerBottom
        ])
    }

}

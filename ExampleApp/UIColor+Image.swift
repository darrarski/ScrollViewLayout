import UIKit

extension UIColor {

    func image(size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { context in
            setFill()
            context.fill(CGRect(origin: .zero, size: size))
        }

    }

}

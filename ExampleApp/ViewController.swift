import UIKit

class ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    // MARK: View

    override func loadView() {
        view = View()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        theView.textLabel.text = .loremIpsum
    }

    private var theView: View! {
        return view as? View
    }

}

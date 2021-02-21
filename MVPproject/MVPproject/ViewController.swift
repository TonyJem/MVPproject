import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ourButton: UIButton!
    @IBOutlet weak var simpleLabel: UILabel!
    
    lazy var presenter = Presenter(ourView: self)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ourButtonAction(_ sender: UIButton) {
        presenter.buttonTapped()
    }
}

extension ViewController: PresentView {
    func updateLabel() {
        simpleLabel.text = "Something changed!"
        view.backgroundColor = .gray
    }
}

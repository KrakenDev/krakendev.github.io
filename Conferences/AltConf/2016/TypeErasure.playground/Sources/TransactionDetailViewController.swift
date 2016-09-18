import UIKit

class TransactionDetailViewController: UIViewController {
    var delegate: AnyCellReloadable<Transaction>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: view.bounds)
        button.titleLabel?.font = .italicSystemFont(ofSize: 40.0)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    func buttonTapped() {
        delegate?.didFinishEditing(updated: true, newObject: Transaction())
    }
}

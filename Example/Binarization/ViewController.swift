
import UIKit
import Binarization

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = MyViewController()
        vc.hello(name: vc.name)
        navigationController?.pushViewController(vc, animated: true)
    }
}

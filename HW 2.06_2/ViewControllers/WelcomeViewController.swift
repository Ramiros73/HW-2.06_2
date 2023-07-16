import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = ("Welcome, \(user.person.name) \(user.person.surname)!")
    }
    
        @IBAction func cancelLogOut() {
            dismiss(animated: true)
    
        }
    
}

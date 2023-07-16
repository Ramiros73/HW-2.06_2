import UIKit

class UserInfoViewControler: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var CompanyTitle: UILabel!
    @IBOutlet var DepartmentTitle: UILabel!
    @IBOutlet var jobLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        CompanyTitle.text = user.person.company
        DepartmentTitle.text = user.person.department
        jobLabel.text = user.person.job
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}


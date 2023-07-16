import UIKit

class LoginViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    
    private let user = User.getUserData()
    //private let password = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.text = user.login
        userPasswordTextField.text = user.password
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        
        if let viewcontrollers = tabBarController.viewControllers {
            
            viewcontrollers.forEach {
                if let welcomeViewController = $0 as? WelcomeViewController {
                    welcomeViewController.user = user
                } else if let navigationViewController = $0 as? UINavigationController {
                    let userInfoViewController = navigationViewController.topViewController
                    if let userInfoViewController = userInfoViewController as? UserInfoViewControler {
                        
                        userInfoViewController.user = user
                    } else {return }
                }
                
            }
            
        }
        
    }
    
    
    //     Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
        
    }
    
    @IBAction func LogInPressed() {
        guard userNameTextField.text == user.login, userPasswordTextField.text == user.password else {
            showAlert(title: "Invalid login or password", message: "Enter correct login and password")
            //    userPasswordTextField.text = ""
            return
        }
        view.endEditing(true)
    }
    
    @IBAction func forgotUser(_ sender: UIButton) {
        showAlert(title: "Your name is", message: user.login)
    }
    
    
    @IBAction func forgotPassword(_ sender: UIButton) {
        showAlert(title: "Your password is", message: user.password)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        userPasswordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alert, animated: true)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
    }
    
}

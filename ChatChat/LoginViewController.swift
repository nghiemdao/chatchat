import UIKit
import Firebase

class LoginViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginDidTouch(sender: AnyObject) {
        FIRAuth.auth()?.signInAnonymouslyWithCompletion({ (user, error) in
            guard error == nil else {
                print(error?.description)
                return
            }
            print(user?.uid)
            self.performSegueWithIdentifier("LoginToChat", sender: nil)
        })
    }
}


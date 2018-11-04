# iOS 11 Development Essential Training: Create Your First App

Some basic usages to how to get text from labels, rig some delegates.

```swift

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!

    @IBAction func didTapButton(_ sender: UIButton) {
        if let name = myTextField.text {
            myLabel.text = "Hi \(name)!"
            myTextField.resignFirstResponder()
        }
        // another way
        //myLabel.text = "Hi " + myTextField.text!
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.delegate = self
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("TextFieldShouldReturn method activated by Delegate")
        myTextField.resignFirstResponder()
        return false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

```

## Build a basic app

### We can do

Buttons, labels, textFields, basic layout

### We cannot do (yet)

Precise layouts, Web Services, Advanced API's


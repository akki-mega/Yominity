//
//  CreateAccountViewController.swift
//  Yominity
//
//  Created by A.F. on 2018/06/03.
//  Copyright © 2018年 A.F. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var newEmailField :UITextField!
    @IBOutlet weak var newPasswordField :UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateAccountButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: newEmailField.text!, password: newPasswordField.text!) { (user, error) in
            if error != nil {
                print("登録できません\(error)")
            }
            if let user = user {
                print(user.email! as Any)
                self.dismiss(animated: true, completion: nil)
            } else {
                print("登録できません")
            }
        }
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

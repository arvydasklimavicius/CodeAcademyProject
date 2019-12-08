//
//  LoginScreenVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-04.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class LoginScreenVC: UIViewController {
    
    
    
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    
    let username = "arvydas"
    let password = "123456"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
    }

    @IBAction func loginBtnPressed(_ sender: Any) {
        
        if usernameTxtField.text == username && passwordTxtField.text == password {
            
            //let loggedVC = LoggedVC()
        
            //present(loggedVC, animated: true, completion: nil)
            //navigationController?.pushViewController(loggedVC, animated: true)
            
//            let navigationController = UINavigationController(rootViewController: loggedVC)
//            navigationController.modalPresentationStyle = .fullScreen
//           
//            present(navigationController, animated: true)
            
            let main = UIStoryboard(name: "Main", bundle: nil)
            let loggedVC = main.instantiateViewController(withIdentifier: "LoggedVC")
            self.present(loggedVC, animated: true, completion: nil)
            
            
            
            
            print("Logged in")
            
        } else {
            
            print("Wrong password or username")
            
            usernameTxtField.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.5059663955)
            passwordTxtField.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.5059663955)
        }
        
    }
    
   

}

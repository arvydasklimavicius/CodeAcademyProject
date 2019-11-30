//
//  HelloWorldButtonVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-11-28.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class HelloWorldButtonVC: UIViewController {
    @IBAction func helloWorldTapped(_ sender: Any) {
        print("Hello world")
    }
    
    @IBOutlet weak var switchButton: UISwitch!
    
    
    @IBAction func colorChangeBtnTapped(_ sender: Any) {
        
     
            if switchButton.isOn {
                view.backgroundColor = .red
            } else {
                view.backgroundColor = .orange

            }

}
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

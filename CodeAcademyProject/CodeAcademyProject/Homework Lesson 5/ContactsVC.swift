//
//  ContactsVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-08.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class ContactsVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    var contactsArray = ["Arvydas":"861813301", "Tomas": "123456" ]
    //var contactsArray = ["Arvydas", "Tomas", "SImas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
        
        //print(contactsArray)

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath) as! ContactCell
        
       // cell.nameTxtLabel.text! = ("\(contactsArray.keys)")
        //cell.phoneNumberTxtLbl.text = contactsArray.index(forKey: indexPath.row)
        
        return cell
    }
    

}

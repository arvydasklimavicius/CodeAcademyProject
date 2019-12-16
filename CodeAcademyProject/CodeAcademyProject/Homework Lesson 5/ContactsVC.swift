//
//  ContactsVC.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-08.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

//var contactsArray = ["Arvydas", "Tomas", "Simas", "Laimonas", "Cezaris", "Mindaugas", "Jogaila", "Martynas"]

class ContactsVC: UIViewController, UITableViewDelegate, UISearchBarDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var contactsTableView: UITableView!
    @IBOutlet weak var searchContacts: UISearchBar!
    
//    var contactsArray = ["Arvydas":"861813301", "Tomas": "123456" ]
    var contactsArray = [("Jonas", "13123123123"), ("Aasdasd", "12390812903")]
    
    var searchArray = [String]()
    var isSearching = false

    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
        searchContacts.delegate = self

        print(contactsArray)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsArray.count
//        if isSearching {
//            return searchArray.count
//        } else {
//            return contactsArray.count
//        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath) as! ContactCell
      
        let name = contactsArray[indexPath.row].0
        let phoneNumber = contactsArray[indexPath.row].1
        
//        let name = Array(contactsArray.enumerated())[indexPath.row].element.key
//        let phoneNumber = Array(contactsArray.enumerated())[indexPath.row].element.value
        cell.nameTxtLabel.text = name
        cell.phoneNumberTxtLbl.text = phoneNumber
        
//        if isSearching {
//            cell.nameTxtLabel.text = searchArray[indexPath.row]
//
//        } else {
//            cell.nameTxtLabel.text! = contactsArray[indexPath.row]
//        }
      
//        let namesKey = contactsArray.keys
//        let contactsNumber = contactsArray.values
//        cell.nameTxtLabel.text! = contactsArray[namesKey]
//        cell.nameTxtLabel.text! = ("\(contactsArray.keys)")
        
        return cell
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchArray = contactsArray.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        
        isSearching = true
        contactsTableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        isSearching = false
        searchBar.text = ""
        contactsTableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        contactsTableView.reloadData()
    }
    

}

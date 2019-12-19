

import UIKit

class ContactListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var contactsTableView: UITableView!

    
    var contactDetails = [(contactName: String, contactNumber: String)]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTableView.dataSource = self
        contactsTableView.delegate = self
        
        contactDetails = [
            (contactName: "Tomas", contactNumber: "123456"),
            (contactName: "Mantas", contactNumber: "654321")
            
            ]
        
        

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactDetails.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactListCell", for: indexPath) as! ContactTableViewCell
        
        
        let name = contactDetails[indexPath.row].contactName
        let number = contactDetails[indexPath.row].contactNumber
        
        cell.nameLabel.text = name
        cell.numberLabel.text = number
        
        
        return cell
    }
    
    @IBAction func addNewContactTapped(_ sender: UIBarButtonItem) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let contactAddVC = segue.destination as? AddNewContactViewController {
            contactAddVC.completion = { contact in
                self.contactDetails.append(contact)
                self.contactsTableView.reloadData()
            }
        }
    }
    
}

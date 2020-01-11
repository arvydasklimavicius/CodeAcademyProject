

import UIKit

class StarWarsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    
    @IBOutlet weak var starWarsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starWarsTableView.delegate = self
        starWarsTableView.dataSource = self

       
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "Jedi"
        case 1:
            return "Spaceship"
        default:
            fatalError("Error, unhandled Section")
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StarWarsCell", for: indexPath) as! StarWarsCell
        
        tableView.separatorStyle = .none
        
        return cell
    }

    

}





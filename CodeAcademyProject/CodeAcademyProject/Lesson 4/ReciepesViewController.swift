

import UIKit

class ReciepesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var reciepesTable: UITableView!


    
    let recepiesArray = [UIImage(named: "maistas7"),
                         UIImage(named: "maistas8"),
                         UIImage(named: "maistas9"),
                         UIImage(named: "maistas10"),
                         UIImage(named: "maistas12"),
                         UIImage(named: "maistas6")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
        
    }
    
    func setupTableView() {
        
        reciepesTable.dataSource = self
        reciepesTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recepiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecepieCell", for: indexPath) as! RecepieTableViewCell
        
        cell.recepieImage.image = recepiesArray[indexPath.row]

        
        return cell
    }
    

}


    
    
    


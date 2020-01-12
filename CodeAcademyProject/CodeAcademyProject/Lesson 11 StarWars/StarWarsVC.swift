

import UIKit

class StarWarsVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    
    @IBOutlet weak var starWarsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starWarsTableView.delegate = self
        starWarsTableView.dataSource = self

       
    }
    
    enum TableViewSection: Int, CaseIterable {
        case jedi
        case darkSide
        case spaceship
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section  {
        case TableViewSection.jedi.rawValue:
            return "Jedi"
        case TableViewSection.spaceship.rawValue:
            return "Spaceship"
        case TableViewSection.darkSide.rawValue:
            return "Dark Side"
        default:
            return "No Section"
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return TableViewSection.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case TableViewSection.jedi.rawValue:
            return jediArray.count
        case TableViewSection.spaceship.rawValue:
            return spaceshipArray.count
        case TableViewSection.darkSide.rawValue:
            return darkForcesArray.count
        default:
            return 0
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StarWarsCell", for: indexPath) as! StarWarsCell
        
        switch TableViewSection(rawValue: indexPath.section) {
            
        case .jedi:
            cell.cellTitle.text = jediArray[indexPath.row].jediName
            cell.cellImage.image = jediArray[indexPath.row].jediImage

        case .spaceship:
            cell.cellTitle.text = spaceshipArray[indexPath.row].spaceshipName
            cell.cellImage.image = spaceshipArray[indexPath.row].spaceshipImage
            
        case .darkSide:
            cell.cellTitle.text = darkForcesArray[indexPath.row].name
            cell.cellImage.image = darkForcesArray[indexPath.row].screenImage
        default:
            return UITableViewCell()
        }
        
        
        
        tableView.separatorStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch TableViewSection(rawValue: indexPath.section) {
        case .jedi:
            let jediVC = storyboard?.instantiateViewController(identifier: "StarWarsDetailsVC") as! StarWarsDetailsVC
            jediVC.displayData = jediArray[indexPath.row]
            self.navigationController?.pushViewController(jediVC, animated: true)
            
        case .spaceship:
            let spaceshipVC = storyboard?.instantiateViewController(identifier: "StarWarsDetailsVC") as! StarWarsDetailsVC
            spaceshipVC.displayData = spaceshipArray[indexPath.row]
            self.navigationController?.pushViewController(spaceshipVC, animated: true)
            
        case .darkSide:
            let darkSideVC = storyboard?.instantiateViewController(identifier: "StarWarsDetailsVC") as! StarWarsDetailsVC
            darkSideVC.displayData = darkForcesArray[indexPath.row]
            self.navigationController?.pushViewController(darkSideVC, animated: true)
        default:
            break
        }
    }

    

}





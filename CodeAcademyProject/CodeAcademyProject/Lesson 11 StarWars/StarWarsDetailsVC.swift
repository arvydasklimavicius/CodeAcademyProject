

import UIKit

class StarWarsDetailsVC: UIViewController {
    
    @IBOutlet weak var starWarsDetailImage: UIImageView!
    @IBOutlet weak var starWarsNameLbl: UILabel!
    @IBOutlet weak var starWarsClassLbl: UILabel!
    @IBOutlet weak var starWarsDescriptionLbl: UILabel!
    
    var displayData: DetailsDescribable?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        starWarsDetailImage.image = displayData?.screenImage
        starWarsNameLbl.text = displayData?.name
        starWarsClassLbl.text = displayData?.unitClass
        starWarsDescriptionLbl.text = displayData?.description
        
        starWarsDetailImage.layer.cornerRadius = starWarsDetailImage.frame.width / 2
        starWarsDetailImage.layer.borderColor = UIColor.yellow.cgColor
        starWarsDetailImage.layer.borderWidth = 4

        
    }
    


}

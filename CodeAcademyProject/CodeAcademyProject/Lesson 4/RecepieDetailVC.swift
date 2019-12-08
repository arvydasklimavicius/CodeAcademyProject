

import UIKit

class RecepieDetailVC: UIViewController {

    @IBOutlet weak var recepieDetailedImg: UIImageView!
    
    var originalImage: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recepieDetailedImg.image = originalImage
        recepieDetailedImg.layer.cornerRadius = 8.0
        
        

        
    }
    


}

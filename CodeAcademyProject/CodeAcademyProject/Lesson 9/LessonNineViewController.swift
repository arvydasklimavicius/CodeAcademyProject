//
//  LessonNineViewController.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2019-12-19.
//  Copyright © 2019 Arvydas Klimavicius. All rights reserved.
//

import UIKit

class LessonNineViewController: UIViewController {
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    @IBOutlet weak var viewSix: UIView!
    @IBOutlet weak var viewSeven: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

        
    }
    
    func setupView() {
        
        viewOne.layer.cornerRadius = viewOne.frame.width / 2
        viewTwo.layer.cornerRadius = viewTwo.frame.width / 2
        viewThree.layer.cornerRadius = viewThree.frame.width / 2
        viewFour.layer.cornerRadius = viewFour.frame.width / 2
        viewFive.layer.cornerRadius = viewFive.frame.width / 2
        viewSix.layer.cornerRadius = viewSix.frame.width / 2
        viewSeven.layer.cornerRadius = viewSeven.frame.width / 2
        
        
    }
    

}

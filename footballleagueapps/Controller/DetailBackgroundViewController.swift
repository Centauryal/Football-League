//
//  DetailBackgroundViewController.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 19/07/21.
//

import UIKit

class DetailBackgroundViewController: UIViewController {

    @IBOutlet weak var ivBackgroundDetail: UIImageView!
    @IBOutlet weak var viewGradient: UIView!
    
    var detailBackground: String = ""
    
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor.white.cgColor,
            UIColor(red: 216/255, green: 58/255, blue: 86/255, alpha: 1).cgColor
        ]
        gradient.locations = [0, 1]
        return gradient
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradient.frame = viewGradient.bounds
        viewGradient.layer.addSublayer(gradient)
        ivBackgroundDetail.sd_setImage(with: URL(string: detailBackground), placeholderImage: UIImage(named: "brokenimage"))
    }

}

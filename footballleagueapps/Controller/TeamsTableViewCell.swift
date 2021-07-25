//
//  TeamsTableViewCell.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 14/07/21.
//

import UIKit

class TeamsTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var ivTeam: UIImageView!
    @IBOutlet weak var stadiumView: UIView!
    @IBOutlet weak var labelStadiumTeam: UILabel!
    @IBOutlet weak var labelTitleTeam: UILabel!
    @IBOutlet weak var labelSubTitleTeam: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 10
        cardView.layer.borderColor = UIColor.lightGray.cgColor
        cardView.layer.borderWidth = 1
        
        stadiumView.layer.cornerRadius = 8
        
        ivTeam.mainImage()
        ivTeam.layer.shadowPath = UIBezierPath(rect: ivTeam.bounds).cgPath
        ivTeam.layer.shouldRasterize = true
        ivTeam.layer.rasterizationScale = UIScreen.main.scale
        
        labelTitleTeam.font = UIFont.preferredFont(forTextStyle: .title3).bold()
        labelTitleTeam.sizeToFit()
        labelSubTitleTeam.sizeToFit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 15, left: 20, bottom: 10, right: 20))
    }
    
}

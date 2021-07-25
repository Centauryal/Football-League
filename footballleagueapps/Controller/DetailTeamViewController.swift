//
//  DetailTeamViewController.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 19/07/21.
//

import UIKit

class DetailTeamViewController: UIViewController {

    @IBOutlet weak var ivDetailTeam: UIImageView!
    @IBOutlet weak var viewStadium: UIView!
    @IBOutlet weak var labelStadiumDetail: UILabel!
    @IBOutlet weak var labelTitleDetail: UILabel!
    @IBOutlet weak var labelLocationDetail: UILabel!
    @IBOutlet weak var labelWebsiteDetail: UILabel!
    @IBOutlet weak var labelDescDetail: UILabel!
    @IBOutlet weak var labelOverview: UILabel!
    
    var detailTeam: Teams?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.view.tintColor = UIColor(named: "AccentColor")
        showDetail()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailBackgroundView" {
            if let backgroundChild = segue.destination as? DetailBackgroundViewController {
                backgroundChild.detailBackground = detailTeam!.strTeamBanner
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    func showDetail() {
        ivDetailTeam.sd_setImage(with: URL(string: detailTeam!.strTeamBadge), placeholderImage: UIImage(named: "brokenimage"))
        ivDetailTeam.mainImage()
        
        viewStadium.layer.cornerRadius = 8
        labelStadiumDetail.text = detailTeam?.strStadium
        
        labelTitleDetail.text = detailTeam?.strAlternate
        labelTitleDetail.font = UIFont.preferredFont(forTextStyle: .title2).bold()
        labelTitleDetail.sizeToFit()
        
        labelLocationDetail.text = detailTeam?.strStadiumLocation
        
        labelWebsiteDetail.text = detailTeam?.strWebsite
        labelWebsiteDetail.font = UIFont.preferredFont(forTextStyle: .callout).bold()
        
        labelDescDetail.text = detailTeam?.strDescriptionEN
        labelDescDetail.sizeToFit()
        
        labelOverview.font = UIFont.preferredFont(forTextStyle: .title1).bold()
    }
}

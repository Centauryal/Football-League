//
//  ViewController.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 14/07/21.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var tbTeams: UITableView!
    @IBOutlet weak var viewLoadMore: UIView!
    
    private let ivAccount = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
    private var listTeams:[Teams] = []
    private var service: ApiService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backButtonTitle = "Back"
        
        tbTeams.dataSource = self
        tbTeams.delegate = self
        tbTeams.register(UINib(nibName: "TeamsTableViewCell", bundle: nil), forCellReuseIdentifier: "mainTableViewCell")
        
        service = ApiService()
        service?.getListTeams { result in
            self.showLoadMoreDataView(true)
            if result.isEmpty {
                self.showLoadMoreDataView(false)
            } else {
                self.listTeams = result
                
                DispatchQueue.main.async {
                    self.showLoadMoreDataView(false)
                    self.tbTeams.reloadData()
                }
            }
        }
        setupUIAccount()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let height = navigationController?.navigationBar.frame.height else { return }
        moveAndResizeImageAccount(for: height)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showImage(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        showImage(false)
    }

    private func showLoadMoreDataView(_ show: Bool) {
        DispatchQueue.main.async {
            self.viewLoadMore.isHidden = show ? false : true
        }
    }
    
    private func setupUIAccount() {
        guard let navigationBar = self.navigationController?.navigationBar else { return }
        navigationBar.addSubview(ivAccount)
        ivAccount.layer.cornerRadius = Const.ImageSizeForLargeState / 2
        ivAccount.clipsToBounds = true
        ivAccount.translatesAutoresizingMaskIntoConstraints = false
        ivAccount.tintColor = UIColor(named: "PrimaryColor")
        NSLayoutConstraint.activate([
            ivAccount.rightAnchor.constraint(equalTo: navigationBar.rightAnchor, constant: -Const.ImageRightMargin),
            ivAccount.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor, constant: -Const.ImageBottomMarginForLargeState),
            ivAccount.heightAnchor.constraint(equalToConstant: Const.ImageSizeForLargeState),
            ivAccount.widthAnchor.constraint(equalTo: ivAccount.heightAnchor)
            ])
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        ivAccount.isUserInteractionEnabled = true
        ivAccount.addGestureRecognizer(tapGestureRecognizer)
    }
    
    private struct Const {
        static let ImageSizeForLargeState: CGFloat = 40
        static let ImageRightMargin: CGFloat = 16
        static let ImageBottomMarginForLargeState: CGFloat = 12
        static let ImageBottomMarginForSmallState: CGFloat = 6
        static let ImageSizeForSmallState: CGFloat = 32
        static let NavBarHeightSmallState: CGFloat = 44
        static let NavBarHeightLargeState: CGFloat = 96.5
    }
    
    private func showImage(_ show: Bool) {
        UIView.animate(withDuration: 0.2) {
            self.ivAccount.alpha = show ? 1.0 : 0.0
        }
    }
    
    private func moveAndResizeImageAccount(for height: CGFloat) {
        let coeff: CGFloat = {
            let delta = height - Const.NavBarHeightSmallState
            let heightDifferenceBetweenStates = (Const.NavBarHeightLargeState - Const.NavBarHeightSmallState)
            return delta / heightDifferenceBetweenStates
        }()

        let factor = Const.ImageSizeForSmallState / Const.ImageSizeForLargeState

        let scale: CGFloat = {
            let sizeAddendumFactor = coeff * (1.0 - factor)
            return min(1.0, sizeAddendumFactor + factor)
        }()

        let sizeDiff = Const.ImageSizeForLargeState * (1.0 - factor)
        let yTranslation: CGFloat = {
            let maxYTranslation = Const.ImageBottomMarginForLargeState - Const.ImageBottomMarginForSmallState + sizeDiff
            return max(0, min(maxYTranslation, (maxYTranslation - coeff * (Const.ImageBottomMarginForSmallState + sizeDiff))))
        }()

        let xTranslation = max(0, sizeDiff - coeff * sizeDiff)

        ivAccount.transform = CGAffineTransform.identity.scaledBy(x: scale, y: scale).translatedBy(x: xTranslation, y: yTranslation)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        if let account = self.storyboard?.instantiateViewController(identifier: "AccountViewController") as? AccountViewController {
            self.navigationController?.pushViewController(account, animated: true)
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let teams: Teams
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mainTableViewCell", for: indexPath) as? TeamsTableViewCell {
            teams = listTeams[indexPath.row]
            
            cell.ivTeam.sd_setImage(with: URL(string: teams.strTeamBadge), placeholderImage: UIImage(named: "brokenimage"))
            cell.labelStadiumTeam.text = teams.strStadium
            cell.labelTitleTeam.text = teams.strAlternate
            cell.labelSubTitleTeam.text = teams.strDescriptionEN
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tbTeams.deselectRow(at: indexPath, animated: true)
        
        if let detail = self.storyboard?.instantiateViewController(identifier: "DetailTeamViewController") as? DetailTeamViewController {
            detail.detailTeam = listTeams[indexPath.row]
            self.navigationController?.pushViewController(detail, animated: true)
        }
    }
}

//
//  Extension.swift
//  footballleagueapps
//
//  Created by Alfa Centaury on 19/07/21.
//

import UIKit

extension UIFont {
    func withTraits(traits:UIFontDescriptor.SymbolicTraits) -> UIFont {
        let descriptor = fontDescriptor.withSymbolicTraits(traits)
        
        return UIFont(descriptor: descriptor!, size: 0)
    }

    func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }

    func italic() -> UIFont {
        return withTraits(traits: .traitItalic)
    }
}

extension UIImageView {
    func mainImage() {
        self.layer.cornerRadius = 10
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowRadius = 5.0
    }
}

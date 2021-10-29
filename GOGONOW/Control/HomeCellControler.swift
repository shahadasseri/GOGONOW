//
//  HomeCellControler.swift
//  GOGONOW
//
//  Created by shahad nasser asseri on 16/03/1443 AH.
//

import UIKit

class HomeCellControler: UICollectionViewCell {

    @IBOutlet weak var ImageCell: UIImageView!
    
    @IBOutlet weak var ButtonCell: UIButton!
    func setupCell(photo:UIImage){
        ImageCell.image = photo
    }
}

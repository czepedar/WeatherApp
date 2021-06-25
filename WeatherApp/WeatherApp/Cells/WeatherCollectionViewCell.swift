//
//  WeatherCollectionViewCell.swift
//  WeatherApp
//
//  Created by user198873 on 23/6/21.
//

import UIKit

class WeatherCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbCiudad: UILabel!
    @IBOutlet weak var lbClima: UILabel!
    
    @IBOutlet weak var btnPronostico: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        setupButtnStyleRound(button: btnPronostico)

    }
    
    //función botón circular
    func setupButtnStyleRound(button:UIButton){
        button.layer.cornerRadius = 8
        button.setTitle("Ver Pronóstico", for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline).withSize(11.0)
    }
}

//
//  ViewController.swift
//  WeatherApp
//
//  Created by user198873 on 23/6/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let weatherCollectionViewCellId = "WeatherCollectionViewCell"
    
    var climas = [Clima]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        //registrar celda
        let nibCell = UINib(nibName: weatherCollectionViewCellId, bundle: nil)
        collectionView.register(nibCell, forCellWithReuseIdentifier: weatherCollectionViewCellId)
        
        //inicializamos la data
        for _ in 1...25 {
            let clima = Clima()
            clima?.ciudad = "Cartago"
            clima?.estClima = "Muy Lluvioso"
            climas.append(clima!)
        }
        collectionView.reloadData()
    }

}

//codigo para el collectionView
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return climas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let inset:CGFloat = 10
        return UIEdgeInsets( top: inset, left: inset, bottom: inset, right: inset)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: weatherCollectionViewCellId, for: indexPath) as! WeatherCollectionViewCell
        let clima = climas[indexPath.row]
        cell.img.image = UIImage(named: "img_rain")
        cell.lbCiudad.text = clima.ciudad!
        cell.layer.cornerRadius = cell.frame.height / 22
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let clima = climas[indexPath.row]
        print("\(indexPath.row) - \(clima.ciudad!)")
        
   }
}


//
//  ViewController.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 27/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ProductView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        ProductView.dataSource = self
        ProductView.delegate = self
        ProductView.collectionViewLayout = UICollectionViewFlowLayout()
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        
        cell.setup(category: categories[indexPath.row])
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //let lay = collectionViewLayout as! UICollectionViewFlowLayout
        //let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
        //return CGSize(width: widthPerItem - 8, height: 250)
        return CGSize(width: 150, height: 300)
    }
}

extension ViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // here we can add to enter to product from category list
        print(categories[indexPath.row].title)
        
        // navigating to product list
//        let vc = (storyboard?.instantiateViewController(withIdentifier: "ProductTableViewCell"))!
        
        let controller = (storyboard?.instantiateViewController(withIdentifier: "ProductViewController"))!
        
        navigationController?.pushViewController(controller, animated: true)
    }
}

//
//  ViewController.swift
//  ecommapp
//
//  Created by Rezwan Chowdhury on 27/7/22.
//  Collection View

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ProductView: UICollectionView!
    @IBOutlet weak var profilePictureImageView: UIImageView!
    
    
    var catList: [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        Manager().getCategories() {
            strList in
            self.catList = strList
            DispatchQueue.main.async {
                self.ProductView.reloadData()
            }
            
        }
        
        ProductView.dataSource = self
        ProductView.delegate = self
        ProductView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    @IBAction func changeProfilePicTapped(_ sender: UIButton) {
        
        let picker = PickerController()
                picker.selectImage(self){ image in
                    DispatchQueue.main.async {
                        self.profilePictureImageView.image = image
                    }
                }
    }
    
    @IBAction func cartTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func addtocartTapped(_ sender: UIButton) {
        
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catList?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        
        cell.setup(category: categories[indexPath.row])
        cell.CategoryLabel.text = catList?[indexPath.row]
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
        
        
        
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "ProductsTableViewController") as! ProductsTableViewController
        controller.catname = catList?[indexPath.row]
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
    
}

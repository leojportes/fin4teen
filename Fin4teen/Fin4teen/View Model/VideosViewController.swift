//
//  VideosViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 05/05/21.
//

import UIKit

class VideosViewController: UIViewController {

        var itemLista = [videosLista]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item:videosLista=videosLista(videosImage: UIImage(named: "videoAula")!, videosNome: "Video Aula")
        itemLista.append(item)
        
        let item1:videosLista=videosLista(videosImage: UIImage(named: "videoAula1")!, videosNome: "Video Aula 2")
        itemLista.append(item1)
        
        let item2:videosLista=videosLista(videosImage: UIImage(named: "videoAula2")!, videosNome: "Video Aula 3")
        itemLista.append(item2)
        
        let item3:videosLista=videosLista(videosImage: UIImage(named: "videoAula3")!, videosNome: "Video Aula 4")
        itemLista.append(item3)
        
        let item4:videosLista=videosLista(videosImage: UIImage(named: "videoAula4")!, videosNome: "Video Aula 5")
        itemLista.append(item4)
        
        let item5:videosLista=videosLista(videosImage: UIImage(named: "videoAula5")!, videosNome: "Video Aula 6")
        itemLista.append(item5)
        
        
    }
    
}

extension VideosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemLista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! VideosViewController
        cell.myImageView.image = itemLista[indexPath.row].videosImage
        cell.itemLabel.text = itemLista[indexPath.row].videosNome
        cell.myImageView.layer.cornerRadius = 10
        return cell
    }
    
    
    
    
}

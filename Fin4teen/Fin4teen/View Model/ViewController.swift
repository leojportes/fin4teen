//
//  ViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 05/05/21.
//

import UIKit


class ViewController: UIViewController {

    
    //MARK: Outlets
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    
    //MARK: Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
   
    //MARK: Variables
    
    var itemLista = [videosLista]()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        title = "Videoaulas"
        
        let item:videosLista = videosLista(videosImage: UIImage(named: "videoAula")!, videosNome: "Video Aula 1", videoArquivoNome:  "https://www.youtube.com/watch?v=PilNQ2TkwGw&list=RDCMUCvPFGq6luCqAVGiFpzTvkIA&index=1")
        itemLista.append(item)
        
        let item2:videosLista = videosLista(videosImage: UIImage(named: "videoAula1")!, videosNome: "Video Aula 2", videoArquivoNome: "https://www.youtube.com/watch?v=PilNQ2TkwGw&list=RDCMUCvPFGq6luCqAVGiFpzTvkIA&index=1")
        itemLista.append(item2)
        
        let item3:videosLista = videosLista(videosImage: UIImage(named: "videoAula2")!, videosNome: "Video Aula 3", videoArquivoNome: "https://www.youtube.com/watch?v=PilNQ2TkwGw&list=RDCMUCvPFGq6luCqAVGiFpzTvkIA&index=1")
        itemLista.append(item3)
        
        let item4:videosLista = videosLista(videosImage: UIImage(named: "videoAula")!, videosNome: "Video Aula 4", videoArquivoNome: "https://www.youtube.com/watch?v=PilNQ2TkwGw&list=RDCMUCvPFGq6luCqAVGiFpzTvkIA&index=1")
        itemLista.append(item4)
        
        let item5:videosLista = videosLista(videosImage: UIImage(named: "videoAula")!, videosNome: "Video Aula 5", videoArquivoNome: "https://www.youtube.com/watch?v=PilNQ2TkwGw&list=RDCMUCvPFGq6luCqAVGiFpzTvkIA&index=1")
        itemLista.append(item5)
        
        let item6:videosLista = videosLista(videosImage: UIImage(named: "videoAula")!, videosNome: "Video Aula 6", videoArquivoNome: "https://www.youtube.com/watch?v=PilNQ2TkwGw&list=RDCMUCvPFGq6luCqAVGiFpzTvkIA&index=1")
        itemLista.append(item6)
        
        
    }
    
}

    //MARK: Extensions

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemLista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BibliotecaCollectionViewCell
        cell.myImageView.image = itemLista[indexPath.row].videosImage
        cell.itemLabel.text = itemLista[indexPath.row].videosNome
        cell.myImageView.layer.cornerRadius = 10 //Altera a borda da imagem da cell
        cell.viewDetalhes.tag = indexPath.row
        cell.viewDetalhes.addTarget(self, action: #selector(viewdetalhes), for: .touchUpInside)
        return cell
    }
        
    @objc func viewdetalhes(sender:UIButton){
        let indexpath1 = IndexPath(row: sender.tag, section: 0)
        let home = self.storyboard?.instantiateViewController(withIdentifier: "DetalhesController") as! DetalhesController
        
        home.svideo = itemLista[indexpath1.row]
        self.navigationController?.pushViewController(home, animated: true)
        
    }
}

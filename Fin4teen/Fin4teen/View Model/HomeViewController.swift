//
//  HomeViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 04/05/21.
//



import UIKit
import AlamofireImage

class HomeViewController: UIViewController {
    
//    https://api.themoviedb.org/3/movie/791373?api_key=c88a5237fdc6ce4594df4af2f1750c7a&language=en-US
    
    @IBOutlet weak var imagemDetalhes: UIImageView!
    
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var overviewTextView: UITextView!
    

    var cellFilme:Article? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let noticia = cellFilme {
            
//            let urlDaImagem = String(noticia.urlToImage)
            let imagem = URL(string: "https://noticiasconcursos.com.br/wp-content/uploads/2020/05/antecipacao-do-saque-fgts.jpg")
            self.imagemDetalhes.af_setImage(withURL: imagem!)
            self.tituloLabel.text = noticia.title
            self.overviewTextView.text = noticia.articleDescription
            print(cellFilme?.articleDescription ?? <#default value#>)
            print(cellFilme?.author as Any)
        }
        
    }
    
}









//import UIKit
//import AlamofireImage
//
//class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
//
//    let chamadaApi = ChamadaApi()
//    var listaNoticias = [Article]()
//
//    @IBOutlet weak var ImagemNews: UICollectionView!
//
//    override func viewDidLoad() {
//            super.viewDidLoad()
//            ImagemNews.dataSource = self
//            listaNoticias = chamadaApi.makeRequest()
//            ImagemNews.delegate = self
//
//        }
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        let celulaImageNews = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaImageNews", for: indexPath) as! ImageNewsCollectionViewCell
//
//        let imagePosterUrl = listaNoticias[indexPath.row].urlToImage
//
//        let imageUrl = URL(string: "\(String(describing: imagePosterUrl))")
//        celulaImageNews.ImageNews.af_setImage(withURL: imageUrl!)
//        print(listaNoticias.count)
//        return celulaImageNews
//    }
//
////    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
////        let noticias = listaNoticias[indexPath.item]
////        let storyboard = UIStoryboard(name: "Main", bundle: nil)
////        let controller = storyboard.instantiateViewController(withIdentifier: "teladetalhes") as! DetalhesViewController
////        controller.cellFilme = noticias
////
////        self.present(controller, animated: true, completion: nil)
////    }
//
//}

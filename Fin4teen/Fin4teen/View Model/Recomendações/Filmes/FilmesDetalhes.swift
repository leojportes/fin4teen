//
//  FilmesDetalhes.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 17/05/21.
//


import UIKit



class FilmesDetalhes: UIViewController {
    
    //MARK: Variables
    

    
    
    
    //MARK: Outlets

    @IBOutlet weak var detalhesFilmesLabel: UILabel!
    
    @IBOutlet weak var detalhesFilmesImage: UIImageView!
    
    
    //MARK: Actions
    
    @IBAction func dismissActionFilmes(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: Variables
    
    var sFilmes:FilmesLista! = nil
    var url = String()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let filme = sFilmes {
        detalhesFilmesImage.image = filme.filmesImage
        detalhesFilmesLabel.text = filme.filmesNome
        }

    }

   @IBAction func btLinkFilmes() {
        chamaLinkFilmes()
    }
    
    func chamaLinkFilmes(){
        let url = sFilmes.filmesLink
        UIApplication.shared.open(URL(string: url!)! as URL, options: [:], completionHandler: nil)
    }

    
    
}
    
    

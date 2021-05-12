//
//  LivrosDetalhes.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 11/05/21.
//


import UIKit



class LivrosDetalhes: UIViewController {
    
    //MARK: Variables
    

    
    
    
    //MARK: Outlets

    @IBOutlet weak var detalhesLivrosLabel: UILabel!
    
    @IBOutlet weak var detalhesLivrosImage: UIImageView!
    
    
    //MARK: Actions
    
    @IBAction func dismissActionLivros(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: Variables
    
    var sLivros:LivrosLista! = nil
    var url = String()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let livro = sLivros {
        detalhesLivrosImage.image = livro.livrosImage
        detalhesLivrosLabel.text = livro.livrosNome
        }

    }

   @IBAction func btLinkLivros() {
      linkLivros()
    }
    
    func linkLivros(){
        let url = sLivros.livrosLink
            UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
    }

    
    
}
    
    

//
//  ContateNosViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 17/05/21.
//

import UIKit

class ContateNosViewController: UIViewController {

    @IBAction func dismissActionbt(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        
    }
    
    
    @IBAction func btGitHub(_ sender: Any) {
        let autenticaPermicao = UIAlertController(title: "Alerta!", message: "Deseja ser redirecionado para o GitHub?", preferredStyle: UIAlertController.Style.alert)
        autenticaPermicao.addAction(UIAlertAction(title: "Acessar", style: .default, handler: { action in
            UIApplication.shared.open(URL(string: "https://github.com/leojportes/Fin4teen")! as URL, options: [:], completionHandler: nil)
         
        }))

      autenticaPermicao.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action: UIAlertAction!) in
       
      }))

      present(autenticaPermicao, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func btInstagram(_ sender: Any) {
        
        let autenticaPermicao = UIAlertController(title: "Alerta!", message: "Deseja ser redirecionado para o Instagram?", preferredStyle: UIAlertController.Style.alert)
        autenticaPermicao.addAction(UIAlertAction(title: "Acessar", style: .default, handler: { action in
            UIApplication.shared.open(URL(string: "https://www.instagram.com/fin4teenapp/")! as URL, options: [:], completionHandler: nil)
         
        }))

      autenticaPermicao.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: { (action: UIAlertAction!) in
       
      }))

      present(autenticaPermicao, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

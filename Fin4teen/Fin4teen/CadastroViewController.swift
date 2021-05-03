//
//  CadastroViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 03/05/21.
//

import UIKit
import Firebase

class CadastroViewController: UIViewController {

    var auth:Auth?
    let imageicon = UIImageView()
    var iconClick = false
    let imageiconConfirma = UIImageView()
    var iconClickConfirma = false
    
    // MARK: LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        self.auth = Auth.auth()
        


        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var emailcadastrarTextField: UITextField!
    
    @IBOutlet weak var senhacadastrarTextField: UITextField!
    
    @IBOutlet weak var confirmasenhaTextField: UITextField!
    
    @IBAction func btCadastrar(_ sender: UIButton) {
        let email:String = self.emailcadastrarTextField.text ?? ""
        let senha:String = self.senhacadastrarTextField.text ?? ""
        let senha2:String = self.confirmasenhaTextField.text ?? ""
        
        if senha == senha2 {
            self.auth?.createUser(withEmail: email, password: senha, completion: { (result, error) in
                if error != nil{
                    self.alert(title: "Atenção!", message: "Falha ao cadastrar")
                    print("Email já cadastrado!")
                
                }else{
                    self.alert(title: "Pronto!", message: "Email e senha cadastrados.")
    //                    self.performSegue(withIdentifier: "voltaLogin", sender: nil)
                }
            })
        }else{
            self.alert(title: "Atenção!", message: "Senhas diferentes.")
            return
        }
    }
    // MARK: FUNCTIONS
    
    func alert(title:String, message:String){
        let alertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
        }
}



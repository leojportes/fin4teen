//
//  PrincipalViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 06/05/21.
//

import UIKit
import MessageUI

class PrincipalViewController: UIViewController, MFMailComposeViewControllerDelegate {


    
    //MARK: Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func btLogout(sender: AnyObject) {
    }
    @IBAction func didTapButton() {
        let vc = storyboard?.instantiateViewController(identifier: "videos") as! ViewController
        vc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
 
  
    //MARK: Functions
    
    func alert(title:String, message:String){
        let alertController:UIAlertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok:UIAlertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(ok)
        self.present(alertController, animated: true, completion: nil)
        }

}
        

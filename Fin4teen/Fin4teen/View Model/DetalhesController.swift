//
//  DetalhesController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 05/05/21.
//

import UIKit



class DetalhesController: UIViewController {
 
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let video = svideo {
        detalhesImage.image = video.videosImage
        detalhesLabel.text = video.videosNome
        }
    }
    
    //MARK: Outlets

    @IBOutlet weak var detalhesLabel: UILabel!
    
    @IBOutlet weak var detalhesImage: UIImageView!
    
    
    //MARK: Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btVideo() {
       playVideo()
     }
    
    //MARK: Variables
    
    var svideo:videosLista! = nil
    var url = String()
    
    
    
    //MARK: Functions
    
    func playVideo(){
        let url = svideo.videoArquivoNome
            UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
    }
 
}
    
    

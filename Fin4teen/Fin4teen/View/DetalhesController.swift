//
//  DetalhesController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 05/05/21.
//

import UIKit
import AVKit


class DetalhesController: UIViewController {
    
    //MARK: Variables
    
//    var player = AVPlayer()
//    var playerViewController = AVPlayerViewController()
//    var videos = [videosLista]()
//
    
    
    
    
    //MARK: Outlets

    @IBOutlet weak var detalhesLabel: UILabel!
    
    @IBOutlet weak var detalhesImage: UIImageView!
    
    
    //MARK: Actions
    
    @IBAction func dismissAction(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: Variables
    
    var svideo:videosLista! = nil
    var url = String()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let video = svideo {
        detalhesImage.image = video.videosImage
        detalhesLabel.text = video.videosNome
        }

    }

   @IBAction func btVideo() {
      playVideo()
    }
    
    func playVideo(){
        let url = svideo.videoArquivoNome
            UIApplication.shared.open(URL(string: url)! as URL, options: [:], completionHandler: nil)
    }

    
    
}
    
    
    
//    func playVideo(at indexPath: IndexPath){
//        let selectedVideo = videos[indexPath.row]var url = svideo.videoArquivoNome
//        let videoPath = Bundle.main.path(forResource: selectedVideo.videoArquivoNome, ofType: "mp4")
//        let videoPathURL = URL(fileURLWithPath: videoPath!)
//        player = AVPlayer(url: videoPathURL)
//        playerViewController.player = player
//
//        self.present(playerViewController, animated: true, completion: nil)
//    }


//
//  ProgramasTVDetalhes.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 19/05/21.
//


import UIKit


class ProgramasTVDetalhes: UIViewController {

    //MARK: Outlets

    @IBOutlet weak var detalhesProgramasTvLabel: UILabel!
    
    @IBOutlet weak var detalhesProgramasTvImage: UIImageView!
    
    @IBOutlet weak var programaOverview: UITextView!
    
    //MARK: Actions
    
    @IBAction func dismissActionProgramasTv(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: Variables
    
    var sProgramasTv:ProgramasTvLista! = nil
    var url = String()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let programasTv = sProgramasTv {
        detalhesProgramasTvImage.image = programasTv.programaTvImage
        detalhesProgramasTvLabel.text = programasTv.programaTvNome
        programaOverview.text = programasTv.programaOverview
        }

    }

 

    
    
}
    
    

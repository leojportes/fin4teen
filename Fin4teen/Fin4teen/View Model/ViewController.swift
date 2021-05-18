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
        cadastraAulas()
    }
    
    //MARK: Functions
    
    func cadastraAulas(){
        let item:videosLista = videosLista(videosImage: UIImage(named: "comeceaqui")!, videosNome: "Como começar a investir - Jovens de Negócios", videoArquivoNome:  "https://www.youtube.com/watch?v=PtAkxzMhobQ")
        itemLista.append(item)
        
        let item2:videosLista = videosLista(videosImage: UIImage(named: "invistabemcompoucodinheiro")!, videosNome: "Invista bem com pouco dinheiro - O Primo rico", videoArquivoNome: "https://www.youtube.com/watch?v=RYQ9pltY010")
        itemLista.append(item2)

        let item3:videosLista = videosLista(videosImage: UIImage(named: "orcamentoperfeito")!, videosNome: "Orçamento Perfeito - O Primo rico", videoArquivoNome: "https://www.youtube.com/watch?v=W2N_TqJzFns")
        itemLista.append(item3)

        let item4:videosLista = videosLista(videosImage: UIImage(named: "comocomecarainvestir")!, videosNome: "Como começar a investir - Me poupe!", videoArquivoNome: "https://www.youtube.com/watch?v=aGGYFxLdFMw")
        itemLista.append(item4)

        let item5:videosLista = videosLista(videosImage: UIImage(named: "educacaofinanceiraxinteligenciafinanceira")!, videosNome: "Educação Financeira x Inteligência Financeira - Gustavo Cerbasi", videoArquivoNome: "https://www.youtube.com/watch?v=Jvt1JI-VsM0")
        itemLista.append(item5)

        let item6:videosLista = videosLista(videosImage: UIImage(named: "as12leisdodinheiro")!, videosNome: "As 12 leis do dinheiro - O Primo Rico", videoArquivoNome: "https://www.youtube.com/watch?v=qAlfutQakXE")
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

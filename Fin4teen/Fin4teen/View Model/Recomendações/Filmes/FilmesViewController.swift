//
//  FilmesViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 17/05/21.
//


import UIKit


class FilmesViewController: UIViewController {

    
    //MARK: Outlets
    
    @IBOutlet weak var myFilmesCollectionViewCell: UICollectionView!
    
    
    //MARK: Actions
    
    
    @IBAction func dismissActionFilme(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
   
    //MARK: Variables
    
    var itemListaFilmes = [FilmesLista]()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        title = "Videoaulas"
        cadastramentoFilmes()
        
        
    }
    
    //MARK: Functions
    
    func cadastramentoFilmes() {
        
        let item:FilmesLista = FilmesLista(filmesImage: UIImage(named: "olobodewallstreet")!, filmesNome: "O Lobo de Wall Street", filmesLink:  "https://tv.apple.com/br/movie/o-lobo-de-wall-street/umc.cmc.2tmr7hr6xnw1buspmujtvb9ep")
        itemListaFilmes.append(item)
        
        let item2:FilmesLista = FilmesLista(filmesImage: UIImage(named: "fome_poder-500x667")!, filmesNome: "Fome de Poder.", filmesLink: "https://tv.apple.com/br/movie/fome-de-poder/umc.cmc.7g4d3tuc9ua4yp4zcd4kp01jf")
        itemListaFilmes.append(item2)
        
        let item3:FilmesLista = FilmesLista(filmesImage: UIImage(named: "becoming_buffet-500x739")!, filmesNome: "Como ser Warren Buffett", filmesLink: "https://tv.apple.com/br/movie/como-ser-warren-buffett/umc.cmc.4o443doekdyp4knkaorem7gfr")
        itemListaFilmes.append(item3)
        
        let item4:FilmesLista = FilmesLista(filmesImage: UIImage(named: "capitalism")!, filmesNome: "Capitalismo: Uma história de amor", filmesLink: "https://www.primevideo.com/region/na/detail/0N8WDKAAZGVJNYY9UHT7FO5LYF/ref=atv_dp_share_cu_r")
        itemListaFilmes.append(item4)
        
        let item5:FilmesLista = FilmesLista(filmesImage: UIImage(named: "enron")!, filmesNome: "Enron: Os mais espertos da sala", filmesLink: "https://tv.apple.com/us/movie/enron-the-smartest-guys-in-the-room/umc.cmc.6o28323dwt73trtj78i7vljv8")
        itemListaFilmes.append(item5)
        
        let item6:FilmesLista = FilmesLista(filmesImage: UIImage(named: "grande_aposta-500x780")!, filmesNome: "A grande aposta.", filmesLink: "https://tv.apple.com/br/movie/a-grande-aposta/umc.cmc.7bpp98k5o2jxx401fwfddi5zg")
        itemListaFilmes.append(item6)
        ///
        let item7:FilmesLista = FilmesLista(filmesImage: UIImage(named: "procura_felicidade")!, filmesNome: "A procura da felicidade", filmesLink: "https://tv.apple.com/br/movie/a-procura-da-felicidade/umc.cmc.5elxsau2bij3kmoadwoomll4s")
        itemListaFilmes.append(item7)
        
        let item8:FilmesLista = FilmesLista(filmesImage: UIImage(named: "mago_mentiras-500x742")!, filmesNome: "O mago das mentiras", filmesLink: "https://tv.apple.com/br/movie/o-mago-das-mentiras/umc.cmc.3yej4pkdkzlgkpef89c0s3wux")
        itemListaFilmes.append(item8)
        
        let item9:FilmesLista = FilmesLista(filmesImage: UIImage(named: "margin_call-500x721")!, filmesNome: "Margin Call: O dia antes do fim", filmesLink: "https://tv.apple.com/br/movie/margin-call/umc.cmc.2vq60pqkf7xowpq5xi3e0c5nc")
        itemListaFilmes.append(item9)
        
        let item10:FilmesLista = FilmesLista(filmesImage: UIImage(named: "moneyball_mudou")!, filmesNome: "O Homem que mudou o Jogo", filmesLink: "https://tv.apple.com/br/movie/o-homem-que-mudou-o-jogo/umc.cmc.3p9l4y0ztfwdkt15dblnybbg0")
        itemListaFilmes.append(item10)
        
        let item11:FilmesLista = FilmesLista(filmesImage: UIImage(named: "poder_cobica-500x750")!, filmesNome: "Wall Street: Poder e Cobiça", filmesLink: "https://tv.apple.com/us/movie/wall-street/umc.cmc.3txrkdndt76fd2ydd3ato1e7h")
        itemListaFilmes.append(item11)
        
        let item12:FilmesLista = FilmesLista(filmesImage: UIImage(named: "madoff")!, filmesNome: " À caça de Madoff (Chasing Madoff)", filmesLink: "https://tv.apple.com/ca/movie/chasing-madoff/umc.cmc.434gd08qzy8ux6had2io4qzij")
        itemListaFilmes.append(item12)
        
        let item13:FilmesLista = FilmesLista(filmesImage: UIImage(named: "jogo_dinheiro-500x707")!, filmesNome: "Jogo do dinheiro.", filmesLink: "https://tv.apple.com/br/movie/jogo-do-dinheiro/umc.cmc.4u9uy4db6okdr52w3sy0eb9td")
        itemListaFilmes.append(item13)
        
        let item14:FilmesLista = FilmesLista(filmesImage: UIImage(named: "quants-e1609872990658")!, filmesNome: "Quants: Os Alquimistas de Wall Street", filmesLink: "https://filmow.com/quants-os-alquimistas-de-wall-street-t73557/ficha-tecnica/")
        itemListaFilmes.append(item14)
        
        let item15:FilmesLista = FilmesLista(filmesImage: UIImage(named: "quer_milionario-500x704")!, filmesNome: "Quem quer ser um milionário?", filmesLink: "https://tv.apple.com/br/movie/quem-quer-ser-um-milionário/umc.cmc.4z31qtliob8zcfmkqbuf3aka1")
        itemListaFilmes.append(item15)
        
        let item16:FilmesLista = FilmesLista(filmesImage: UIImage(named: "rogue")!, filmesNome: "A Fraude (Rogue Trader)", filmesLink: "https://www.adorocinema.com/filmes/filme-22201/")
        itemListaFilmes.append(item16)
        
        let item17:FilmesLista = FilmesLista(filmesImage: UIImage(named: "too_big-500x741")!, filmesNome: "Grande demais para Quebrar", filmesLink: "https://tv.apple.com/br/movie/grande-demais-para-quebrar/umc.cmc.3vw9fg3qnr4gvxg183opatdg9")
        itemListaFilmes.append(item17)
        
        let item18:FilmesLista = FilmesLista(filmesImage: UIImage(named: "wall_dinheiro_dorme")!, filmesNome: "Wall Street: O dinheiro nunca dorme.", filmesLink: "https://tv.apple.com/pt/movie/wall-street-o-dinheiro-nunca-dorme/umc.cmc.oal61hauuxh2bexpdo2k6wxx")
        itemListaFilmes.append(item18)
        
//        let item19:FilmesLista = FilmesLista(filmesImage: UIImage(named: "aboladeneve")!, filmesNome: "A bola de neve.", filmesLink: "https://ler.amazon.com.br/kp/embed?asin=B00A3D92NU&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_NS4E54X93KG7NC56CZE3")
//        itemListaFilmes.append(item19)
//
//        let item20:FilmesLista = FilmesLista(filmesImage: UIImage(named: "facafortunacomacoes")!, filmesNome: "Faça fortuna com ações.", filmesLink: "https://ler.amazon.com.br/kp/embed?asin=B07WTXSN4G&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_1VP1SC9NZ48CTCRD15CW")
//        itemListaFilmes.append(item20)
//
//
//
//
        
    }
    
}

    //MARK: Extensions

extension FilmesViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemListaFilmes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myFilmesCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! FilmesCollectionViewCell
        cell.myImageViewFilmes.image = itemListaFilmes[indexPath.row].filmesImage
        cell.itemLabelFilmes.text = itemListaFilmes[indexPath.row].filmesNome
        cell.myImageViewFilmes.layer.cornerRadius = 10 //Altera a borda da imagem da cell
        cell.viewDetalhesFilmes.tag = indexPath.row
        cell.viewDetalhesFilmes.addTarget(self, action: #selector(viewdetalhes), for: .touchUpInside)
        return cell
    }
        
    @objc func viewdetalhes(sender:UIButton){
        let indexpath1 = IndexPath(row: sender.tag, section: 0)
        let home = self.storyboard?.instantiateViewController(withIdentifier: "DetalhesFilmesController") as! FilmesDetalhes
        
        home.sFilmes = itemListaFilmes[indexpath1.row]
        self.navigationController?.pushViewController(home, animated: true)
        
    }
}

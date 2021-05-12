//
//  LivrosViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 11/05/21.
//

import UIKit


class LivrosViewController: UIViewController {

    
    //MARK: Outlets
    
    @IBOutlet weak var myCollectionViewCell: UICollectionView!
    
    
    //MARK: Actions
    
    
    @IBAction func dismissActionLivro(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
   
    //MARK: Variables
    
    var itemListaLivros = [LivrosLista]()
    
    
    //MARK: LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        title = "Videoaulas"
        cadastramentaLivros()
        
        
    }
    
    //MARK: Functions
    
    func cadastramentaLivros() {
        
        let item:LivrosLista = LivrosLista(livrosImage: UIImage(named: "pairicopaipobre")!, livrosNome: "Pai Rico, Pai Pobre", livrosLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
        itemListaLivros.append(item)
        
        let item2:LivrosLista = LivrosLista(livrosImage: UIImage(named: "ossegredosdamente")!, livrosNome: "Os Segredos da mente Milionária", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B00A3D1FVC&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_XVHCMDQ209J75WZYTMN4")
        itemListaLivros.append(item2)
        
        let item3:LivrosLista = LivrosLista(livrosImage: UIImage(named: "domilaomilao")!, livrosNome: "Do Mil ao Milão", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B07HQWPVRS&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_9AFA9VF1KFD4YF0HKDHX")
        itemListaLivros.append(item3)
        
        let item4:LivrosLista = LivrosLista(livrosImage: UIImage(named: "ohomemmaisricodababilonia")!, livrosNome: "O Homem mais rico da Babilônia", livrosLink: "")
        itemListaLivros.append(item4)
        
        let item5:LivrosLista = LivrosLista(livrosImage: UIImage(named: "oinvestidorinteligente")!, livrosNome: "O investidor inteligente", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B01B3I5Y44&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_MC31G82QPPHYZQQD45VP")
        itemListaLivros.append(item5)
        
        let item6:LivrosLista = LivrosLista(livrosImage: UIImage(named: "mepoupe")!, livrosNome: "10 Passos pra nunca faltar\n dinheiro no seu Bolso", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B07CX9GJ2R&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_4BS5Y6PGVGES3AK7JFTM")
        itemListaLivros.append(item6)
        ///
        let item7:LivrosLista = LivrosLista(livrosImage: UIImage(named: "acabecadoinvestidor")!, livrosNome: "A Cabeça do investidor", livrosLink: "")
        itemListaLivros.append(item7)
        
        let item8:LivrosLista = LivrosLista(livrosImage: UIImage(named: "educacaofinanceira")!, livrosNome: "O poder da Educação Financeira", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B07H4V5HPG&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_D10A5P8Z9XB85K7MD5EC")
        itemListaLivros.append(item8)
        
        let item9:LivrosLista = LivrosLista(livrosImage: UIImage(named: "apsicologiafinanceira")!, livrosNome: "A Psicologia financeira", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08WBXHFBL&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_VZQB9AVF73FNTMZ8BJDK")
        itemListaLivros.append(item9)
        
        let item10:LivrosLista = LivrosLista(livrosImage: UIImage(named: "comocuidardoseudinheiro")!, livrosNome: "Como cuidar do seu dinheiro", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08LHJQ6H6&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_ZANV5B4MZ9QE2BWRP24B")
        itemListaLivros.append(item10)
        
        let item11:LivrosLista = LivrosLista(livrosImage: UIImage(named: "investimentosinteligentes")!, livrosNome: "Investimentos Inteligentes", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B00GA9BTT6&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_2N295A65WKYN16STRG0E")
        itemListaLivros.append(item11)
        
        let item12:LivrosLista = LivrosLista(livrosImage: UIImage(named: "destraveseudinheiro")!, livrosNome: "Destrave seu dinheiro.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08VTLPQNB&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_R43R3AS45RQ92GA19Z3X")
        itemListaLivros.append(item12)
        
        let item13:LivrosLista = LivrosLista(livrosImage: UIImage(named: "quemconvenceenriquece")!, livrosNome: "Quem convence, enriquece!", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B07M7F66JD&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_8JJCPPB9XYQ87M4MM8ZE")
        itemListaLivros.append(item13)
        
        let item14:LivrosLista = LivrosLista(livrosImage: UIImage(named: "ooutroladodabolsa")!, livrosNome: "O outro lado da bolsa.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08TLPRKFJ&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_1C920FWT3B7PDQBQ091H")
        itemListaLivros.append(item14)
        
        let item15:LivrosLista = LivrosLista(livrosImage: UIImage(named: "lucrandocomostubaroes")!, livrosNome: "Lucrando com os tubarões.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B07BJ7NMFR&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_CB589NYKJGPK1FYT6B8H")
        itemListaLivros.append(item15)
        
        let item16:LivrosLista = LivrosLista(livrosImage: UIImage(named: "supersinais")!, livrosNome: "Manual dos Super sinais da análise técnica.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08J2YWPTQ&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_2TZ752TC3FZDM37B5YSZ")
        itemListaLivros.append(item16)
        
        let item17:LivrosLista = LivrosLista(livrosImage: UIImage(named: "negociandoacoescomfoco")!, livrosNome: "Negociando Ações com Foco", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08J2YWPTQ&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_QP690JV047B0A675WSQT")
        itemListaLivros.append(item17)
        
        let item18:LivrosLista = LivrosLista(livrosImage: UIImage(named: "analisetecnicadomercadofin")!, livrosNome: "Análise técnica do mercado financeiro.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B08Z4J5KX3&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_MRS2QD6GTRMAZD0PE7PD")
        itemListaLivros.append(item18)
        
        let item19:LivrosLista = LivrosLista(livrosImage: UIImage(named: "aboladeneve")!, livrosNome: "A bola de neve.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B00A3D92NU&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_NS4E54X93KG7NC56CZE3")
        itemListaLivros.append(item19)
        
        let item20:LivrosLista = LivrosLista(livrosImage: UIImage(named: "facafortunacomacoes")!, livrosNome: "Faça fortuna com ações.", livrosLink: "https://ler.amazon.com.br/kp/embed?asin=B07WTXSN4G&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_1VP1SC9NZ48CTCRD15CW")
        itemListaLivros.append(item20)
        
     
        
        
        
    }
    
}

    //MARK: Extensions

extension LivrosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemListaLivros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! LivrosCollectionViewCell
        cell.myImageViewLivros.image = itemListaLivros[indexPath.row].livrosImage
        cell.itemLabelLivros.text = itemListaLivros[indexPath.row].livrosNome
        cell.myImageViewLivros.layer.cornerRadius = 10 //Altera a borda da imagem da cell
        cell.viewDetalhesLivros.tag = indexPath.row
        cell.viewDetalhesLivros.addTarget(self, action: #selector(viewdetalhes), for: .touchUpInside)
        return cell
    }
        
    @objc func viewdetalhes(sender:UIButton){
        let indexpath1 = IndexPath(row: sender.tag, section: 0)
        let home = self.storyboard?.instantiateViewController(withIdentifier: "DetalhesLivrosController") as! LivrosDetalhes
        
        home.sLivros = itemListaLivros[indexpath1.row]
        self.navigationController?.pushViewController(home, animated: true)
        
    }
}

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
        
        let item:LivrosLista = LivrosLista(livrosImage: UIImage(named: "pairicopaipobre")!, livrosNome: "Pai Rico, Pai Pobre", livrosLink:  "https://pt.wikipedia.org/wiki/Pai_Rico,_Pai_Pobre")
        itemListaLivros.append(item)
        
        let item2:LivrosLista = LivrosLista(livrosImage: UIImage(named: "ossegredosdamente")!, livrosNome: "Os Segredos da mente Milionária", livrosLink: "https://www.amazon.com.br/segredos-mente-milionária-Harv-Eker/dp/8575422391/ref=asc_df_8575422391/?tag=googleshopp00-20&linkCode=df0&hvadid=379795101554&hvpos=&hvnetw=g&hvrand=14742159844217203137&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001706&hvtargid=pla-572355951315&psc=1")
        itemListaLivros.append(item2)
        
        let item3:LivrosLista = LivrosLista(livrosImage: UIImage(named: "domilaomilao")!, livrosNome: "Do Mil ao Milão", livrosLink: "https://www.amazon.com.br/Mil-Milhão-Sem-Cortar-Cafezinho/dp/8595083274/ref=asc_df_8595083274/?tag=googleshopp00-20&linkCode=df0&hvadid=379715842311&hvpos=&hvnetw=g&hvrand=17014675745076851435&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1001706&hvtargid=pla-743474651893&psc=1")
        itemListaLivros.append(item3)
        
        let item4:LivrosLista = LivrosLista(livrosImage: UIImage(named: "ohomemmaisricodababilonia")!, livrosNome: "O Homem mais rico da Babilônia", livrosLink: "https://www.amazon.com.br/Homem-Mais-Rico-Babilônia/dp/8595081530/ref=sr_1_3?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=O+Homem+mais+rico+da+Babilônia&qid=1620779699&s=books&sr=1-3")
        itemListaLivros.append(item4)
        
        let item5:LivrosLista = LivrosLista(livrosImage: UIImage(named: "oinvestidorinteligente")!, livrosNome: "O investidor inteligente", livrosLink: "https://www.amazon.com.br/Investidor-Inteligente-Benjamin-Graham/dp/8595080801/ref=sr_1_3?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=O+investidor+inteligente&qid=1620779725&s=books&sr=1-3")
        itemListaLivros.append(item5)
        
        let item6:LivrosLista = LivrosLista(livrosImage: UIImage(named: "mepoupe")!, livrosNome: "10 Passos pra nunca faltar\n dinheiro no seu Bolso", livrosLink: "https://www.amazon.com.br/Me-Poupe-passos-faltar-dinheiro-ebook/dp/B07CX9GJ2R/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=10+passos+para+nunca+faltar%5Cn+dinheiro+no+seu+bolso&qid=1620779748&s=books&sr=1-1")
        itemListaLivros.append(item6)
        ///
        let item7:LivrosLista = LivrosLista(livrosImage: UIImage(named: "acabecadoinvestidor")!, livrosNome: "A Cabeça do investidor", livrosLink: "https://www.amazon.com.br/cabeça-investidor-Conheça-emoções-investir/dp/8563993127/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=A+Cabeça+do+investidor&qid=1620779773&s=books&sr=1-1")
        itemListaLivros.append(item7)
        
        let item8:LivrosLista = LivrosLista(livrosImage: UIImage(named: "educacaofinanceira")!, livrosNome: "O poder da Educação Financeira", livrosLink: "https://www.amazon.com.br/Pai-rico-poder-educação-financeira/dp/8550801275/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=O+poder+da+Educação+Financeira&qid=1620779822&s=books&sr=1-1")
        itemListaLivros.append(item8)
        
        let item9:LivrosLista = LivrosLista(livrosImage: UIImage(named: "apsicologiafinanceira")!, livrosNome: "A Psicologia financeira", livrosLink: "https://www.amazon.com.br/psicologia-financeira-atemporais-ganância-felicidade/dp/6555111100/ref=sr_1_2?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=A+Psicologia+financeira&qid=1620779848&s=books&sr=1-2")
        itemListaLivros.append(item9)
        
        let item10:LivrosLista = LivrosLista(livrosImage: UIImage(named: "comocuidardoseudinheiro")!, livrosNome: "Como cuidar do seu dinheiro", livrosLink: "https://www.amazon.com.br/Como-cuidar-do-seu-dinheiro/dp/6555110600/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Como+cuidar+do+seu+dinheiro&qid=1620779866&s=books&sr=1-1")
        itemListaLivros.append(item10)
        
        let item11:LivrosLista = LivrosLista(livrosImage: UIImage(named: "investimentosinteligentes")!, livrosNome: "Investimentos Inteligentes", livrosLink: "https://www.amazon.com.br/Investimentos-inteligentes-Gustavo-Cerbasi/dp/8543109051/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Investimentos+Inteligentes&qid=1620779881&s=books&sr=1-1")
        itemListaLivros.append(item11)
        
        let item12:LivrosLista = LivrosLista(livrosImage: UIImage(named: "destraveseudinheiro")!, livrosNome: "Destrave seu dinheiro.", livrosLink: "https://www.amazon.com.br/Destrave-seu-dinheiro-Cocriação-Financeira/dp/6587885195/ref=sr_1_3?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Destrave+seu+dinheiro&qid=1620779901&s=books&sr=1-3")
        itemListaLivros.append(item12)
        
        let item13:LivrosLista = LivrosLista(livrosImage: UIImage(named: "quemconvenceenriquece")!, livrosNome: "Quem convence, enriquece!", livrosLink: "https://www.amazon.com.br/Quem-Convence-Enriquece-Napoleon-Hill/dp/8568014488/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Quem+convence%2C+enriquece&qid=1620779930&s=books&sr=1-1")
        itemListaLivros.append(item13)
        
        let item14:LivrosLista = LivrosLista(livrosImage: UIImage(named: "ooutroladodabolsa")!, livrosNome: "O outro lado da bolsa.", livrosLink: "https://www.amazon.com.br/Outro-Lado-Bolsa-Investidores-Iniciantes/dp/1777438535/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=O+outro+lado+da+bolsa.&qid=1620779955&s=books&sr=1-1")
        itemListaLivros.append(item14)
        
        let item15:LivrosLista = LivrosLista(livrosImage: UIImage(named: "lucrandocomostubaroes")!, livrosNome: "Lucrando com os tubarões.", livrosLink: "https://www.amazon.com.br/Lucrando-com-Tubarões-Newton-Linchen/dp/8575222880/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Lucrando+com+os+tubarões.&qid=1620779971&s=books&sr=1-1")
        itemListaLivros.append(item15)
        
        let item16:LivrosLista = LivrosLista(livrosImage: UIImage(named: "supersinais")!, livrosNome: "Manual dos Super sinais da análise técnica.", livrosLink: "")
        itemListaLivros.append(item16)
        
        let item17:LivrosLista = LivrosLista(livrosImage: UIImage(named: "negociandoacoescomfoco")!, livrosNome: "https://www.amazon.com.br/Manual-Supersinais-Análise-Técnica-Investimentos/dp/8550813761/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=manual+dos+supersinais+da+análise+técnica&qid=1620779985&s=books&sr=1-1", livrosLink: "")
        itemListaLivros.append(item17)
        
        let item18:LivrosLista = LivrosLista(livrosImage: UIImage(named: "analisetecnicadomercadofin")!, livrosNome: "Análise técnica do mercado financeiro.", livrosLink: "https://www.amazon.com.br/Análise-técnica-mercado-financeiro-abrangente/dp/8550815128/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Análise+técnica+do+mercado+financeiro.&qid=1620780002&s=books&sr=1-1")
        itemListaLivros.append(item18)
        
        let item19:LivrosLista = LivrosLista(livrosImage: UIImage(named: "aboladeneve")!, livrosNome: "A bola de neve.", livrosLink: "https://www.amazon.com.br/Bola-Neve-Warren-Buffett-Negócio/dp/8575424408/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=A+bola+de+neve&qid=1620780041&s=books&sr=1-1")
        itemListaLivros.append(item19)
        
        let item20:LivrosLista = LivrosLista(livrosImage: UIImage(named: "facafortunacomacoes")!, livrosNome: "Faça fortuna com ações.", livrosLink: "https://www.amazon.com.br/Faça-Fortuna-Ações-Antes-Tarde/dp/8585454164/ref=sr_1_1?__mk_pt_BR=ÅMÅŽÕÑ&dchild=1&keywords=Faça+fortuna+com+ações&qid=1620780056&s=books&sr=1-1")
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

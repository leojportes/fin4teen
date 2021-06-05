//
//  ProgramasTvViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 19/05/21.
//

import UIKit

class ProgramasTvViewController: UIViewController {

        
        //MARK: Outlets
        
        @IBOutlet weak var myProgramasTvCollectionViewCell: UICollectionView!
        
        
        //MARK: Actions
        
        
        @IBAction func dismissActionProgramasTv(_ sender: Any) {
            navigationController?.popViewController(animated: true)
        }
        
       
        //MARK: Variables
        
        var itemListaProgramasTv = [ProgramasTvLista]()
        
        
        //MARK: LifeCycle
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .black
            title = "Videoaulas"
            cadastramentaProgramasTv()
          
        }
        
        //MARK: Functions
        
        func cadastramentaProgramasTv() {
            
            let item:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "billions")!, programaTvNome: "Billions", programaOverview: "No mundo das altas finanças de Nova York, o Procurador de Justiça Chuck Rhodes (Paul Giamatti) bate de frente com o brilhante e ambicioso Bobby Axe Axelrod (Damian Lewis).")
            itemListaProgramasTv.append(item)
            
            let item2:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "sharkTank")!, programaTvNome: "Shark Tank Brasil", programaOverview:  "Para tirar suas ideais mirabolantes ideias do papel, esses aspirantes a empreendedor precisam negociar com uma equipe de renomados investidores.")
            itemListaProgramasTv.append(item2)
            
            let item3:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "blackmonday")!, programaTvNome: "Black Monday", programaOverview:  "A série nos levará de volta a 19 de outubro de 1987 - também conhecido como Black Monday (a segunda-feira negra), o pior crash da bolsa de valores da história de Wall Street. Até hoje, ninguém sabe quem causou isso... até agora. Black Monday é a história de “como um grupo de forasteiros se infiltrou no clube dos colarinhos branco bem nascidos de Wall Street e acabou quebrando o maior sistema financeiro do mundo, uma limusine Lamborghini, a festa de aniversário de Don Henley e o teto de vidro”.")
            itemListaProgramasTv.append(item3)
            
            let item4:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "industry")!, programaTvNome: "Industry", programaOverview:  "Um grupo de ambiciosos jovens recém-formados navega o tenso e competitivo ambiente de um importante banco de investimentos em Londres.")
            itemListaProgramasTv.append(item4)
            
            let item5:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "milliondollartraders")!, programaTvNome: "Million Dollar Traders", programaOverview:  "Million Dollar Traders é uma série de televisão britânica de realidade virtual de 2009, criada pelo gerente de fundos de hedge Lex van Dam, que tentou recriar o famoso experimento Turtle Traders, desenvolvido por Richard Dennis na década de 1980. ")
            itemListaProgramasTv.append(item5)
            
            let item6:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "oSocio")!, programaTvNome: "O Sócio", programaOverview:  "Marcus Lemonis, diretor geral de uma empresa multibilionária, sai em busca de negócios de pequeno porte em crise. O empresário investe seu dinheiro e aplica sua experiência para salvar estas empresas e com isso obter mais lucro.")
            itemListaProgramasTv.append(item6)
            ///
            let item7:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "americangreed")!, programaTvNome: "American Greed", programaOverview:  "American Greed é uma série de documentários americanos da CNBC. A série enfoca casos de esquemas Ponzi, peculato e outros crimes de colarinho branco, apresentando entrevistas com investigadores da polícia, vítimas de fraude e, às vezes, fraudadores.")
            itemListaProgramasTv.append(item7)
            
//            let item8:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item8)
//
//            let item9:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item9)
//
//            let item10:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item10)
//
//            let item11:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item11)
//
//            let item12:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item12)
//
//            let item13:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item13)
//
//            let item14:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item14)
//
//            let item15:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item15)
//
//            let item16:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item16)
//
//            let item17:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item17)
//
//            let item18:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item18)
//
//            let item19:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item19)
//
//            let item20:ProgramasTvLista = ProgramasTvLista(programaTvImage: UIImage(named: "pairicopaipobre")!, programaTvNome: "Pai Rico, Pai Pobre", programaTvLink:  "https://ler.amazon.com.br/kp/embed?asin=B07H4WYN5M&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_S58MPJYSA5BAJDWHEHCX")
//            itemListaProgramasTv.append(item20)
//
            
        }
        
    }

        //MARK: Extensions

    extension ProgramasTvViewController: UICollectionViewDelegate, UICollectionViewDataSource {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return itemListaProgramasTv.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = myProgramasTvCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ProgramasTVCollectionViewCell
            cell.myImageProgramas.image = itemListaProgramasTv[indexPath.row].programaTvImage
            cell.myLabelProgramasTv.text = itemListaProgramasTv[indexPath.row].programaTvNome
            cell.myImageProgramas.layer.cornerRadius = 10 //Altera a borda da imagem da cell
            cell.btProgramasDetalhes.tag = indexPath.row
            cell.btProgramasDetalhes.addTarget(self, action: #selector(viewdetalhes), for: .touchUpInside)
            return cell
        }
            
        @objc func viewdetalhes(sender:UIButton){
            let indexpath1 = IndexPath(row: sender.tag, section: 0)
            let home = self.storyboard?.instantiateViewController(withIdentifier: "DetalhesProgramaTvController") as! ProgramasTVDetalhes
            
            home.sProgramasTv = itemListaProgramasTv[indexpath1.row]
            self.navigationController?.pushViewController(home, animated: true)
            
        }
    }

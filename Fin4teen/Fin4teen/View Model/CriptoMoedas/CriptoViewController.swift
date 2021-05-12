//
//  CriptoViewController.swift
//  Fin4teen
//
//  Created by Leonardo Oliveira Portes on 10/05/21.
//

import UIKit

class CriptoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    
    private let tableView: UITableView = {
        
        let tableView = UITableView( frame: .zero, style: .grouped)
        tableView.register(CryptoTableViewCell.self, forCellReuseIdentifier: CryptoTableViewCell.identifier)
        return tableView
    }()
    
    private var viewModels = [CryptoTableViewCellViewModel]()
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.allowsFloats = true
        formatter.numberStyle = .currency
        formatter.formatterBehavior = .default
        return formatter
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Criptomoedas Hoje"
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.backgroundColor = UIColor.black
        
        RequestApi.shered.getAllCryptoData { [weak self] result in
            switch result {
            case .success(let models):
                self?.viewModels = models.compactMap({ models in
                    
                    // Formata Números
                    let price = models.price_usd ?? 0
                    let formatter = CriptoViewController.numberFormatter
                    let priceString = formatter.string(from: NSNumber(value: price))
                    
                    let iconUrl = URL(string:
                                        RequestApi.shered.icons.filter({ icon in
                                        icon.asset_id == models.asset_id
                                        }).first?.url ?? "")
                    
                    return CryptoTableViewCellViewModel(
                        name: models.name ?? "N/A",
                        symbol: models.asset_id,
                        price: priceString ?? "N/A",
                        iconUrl: iconUrl
                    )
                })
                
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CryptoTableViewCell.identifier, for: indexPath) as? CryptoTableViewCell else {
            fatalError()
        }
        cell.configure(with: viewModels[indexPath.row])
      
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
}

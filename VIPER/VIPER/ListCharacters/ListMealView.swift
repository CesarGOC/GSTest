//
//  ListMealView.swift
//  VIPER
//
//  Created by 1135307 on 14/03/24.
//

import UIKit

class ListMealView: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var presenter: ListMealPresenter?
    
    init(){
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.onViewAppear()
        configureTableView()
    }
    
    func configureTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MealTableViewCell", bundle: nil), forCellReuseIdentifier: "MealTableViewCell")
    }

}


extension ListMealView: ListMealUI{
    
    func update(meals: [MealEntity]) {
        //print("Datos rcibidos: \(meals)")
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}


extension ListMealView: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter!.models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "MealTableViewCell", for: indexPath) as! MealTableViewCell
        let model = presenter!.models[indexPath.row]
        customCell.configure(meal: model)
        return customCell
    }

}

extension ListMealView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

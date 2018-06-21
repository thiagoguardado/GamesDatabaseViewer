//
//  DetailFranchiseViewController.swift
//  GamesDatabaseViewer
//
//  Created by Thiago Guardado Beltran on 20/06/18.
//  Copyright © 2018 Thiago Guardado Beltran. All rights reserved.
//

import UIKit

class DetailFranchiseViewController: UIViewController {
  
  
  var viewModel = DetailFranchiseModel()
  
  init(viewModel: DetailFranchiseModel) {
    self.viewModel = viewModel
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    createTableView()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  func createTableView()
  {
    
    let tableView = UITableView()
    
    view.addSubview(tableView)
    
    tableView.delegate = self
    tableView.dataSource = self
    
  }
  
  
}

extension DetailFranchiseViewController: UITableViewDelegate, UITableViewDataSource
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 0;
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return UITableViewCell(style: .default, reuseIdentifier: nil)
  }
  
  
  
}

//
//  SelectFranchiseModel.swift
//  GamesDatabaseViewer
//
//  Created by Thiago Guardado Beltran on 21/06/18.
//  Copyright © 2018 Thiago Guardado Beltran. All rights reserved.
//

import Foundation


class SelectFranchiseModel {
  
  var franchises = [String]()
  let worker = SelectFranchiseWorker()
  
  init() {
    franchises.append("Mario")
    franchises.append("Zelda")
    franchises.append("Final Fantasy")
  }
  
  
  // routes
  func routeToDetailFranchise(source: SelectFranchiseViewController) {
    
    source.navigationController?.pushViewController(DetailFranchiseViewController(viewModel: DetailFranchiseModel()), animated: true)
  }
  
}

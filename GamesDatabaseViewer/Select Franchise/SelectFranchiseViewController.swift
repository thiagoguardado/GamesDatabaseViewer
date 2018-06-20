//
//  SelectFranchiseViewController.swift
//  GamesDatabaseViewer
//
//  Created by Thiago Guardado Beltran on 19/06/18.
//  Copyright © 2018 Thiago Guardado Beltran. All rights reserved.
//

import UIKit

class SelectFranchiseViewController: UIViewController {

    var viewsDict = Dictionary<String, UIView>()
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
      
        createTitle()
      
        createButtons()
    }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func createTitle()
  {
    
    // create and configure label
    let title = UILabel()
    title.text = "Games Database Viewer"
    title.numberOfLines = 0
    title.textAlignment = .center
    title.textColor = DefaultVariables.titleColor
    title.font = UIFont.boldSystemFont(ofSize: 40)
    
    view.addSubview(title)
    
    // constraints
    let dict = ["title":title]
    title.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "V:|-80-[title]->=20-|", options: [], metrics: nil, views: dict))
    
    NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[title]-20-|", options: [], metrics: nil, views: dict))
    
  }
  
  func createButtons()
  {
    
    // create container
    let container = UIView()
    container.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(container)
    viewsDict["container"] = container
    
    let franchiseNames = ["Super Mario","Zelda","Final Fantasy"]
    var verticalConstraintString = "V:|"
    
    for index in 0..<franchiseNames.count {
      let button = DefaultButton(title: franchiseNames[index])
      container.addSubview(button)
      viewsDict["btn\(index)"] = button
      button.translatesAutoresizingMaskIntoConstraints = false
      
      // create vertical constraint string
      verticalConstraintString.append("[btn\(index)]-30-")
      
      // constranti to container horizontally
      NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|[btn\(index)]|", options: [], metrics: nil, views: viewsDict))
      
    }
    
    // vertical constraint of buttons
    verticalConstraintString = String(verticalConstraintString.dropLast(4))
    verticalConstraintString.append("|")
    NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: verticalConstraintString, options: [], metrics: nil, views: viewsDict))
    
    // constraint of container
    NSLayoutConstraint.activate(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[container]-20-|", options: [], metrics: nil, views: viewsDict))
    NSLayoutConstraint(item: container, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0).isActive = true
    

  }


}

//
//  File.swift
//  GamesDatabaseViewer
//
//  Created by Thiago Guardado Beltran on 17/06/18.
//  Copyright © 2018 Thiago Guardado Beltran. All rights reserved.
//

import Foundation
import UIKit

class DefaultButton : UIButton
{
  
  convenience init(title: String)
  {
    self.init()
    
    // set tite and color
    setTitle(title, for: .normal)
    setTitleColor(DefaultVariables.titleColor, for: .normal)
    titleLabel?.adjustsFontSizeToFitWidth = true
    backgroundColor = #colorLiteral(red: 0.9707569106, green: 0.9707569106, blue: 0.9707569106, alpha: 1)
    
    // set corner and shadow
    layer.cornerRadius = 16.0;
    layer.shadowColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    layer.shadowOffset = CGSize(width: 2, height: 2)
    layer.shadowOpacity = 0.9
    
    // set size constraint
    let dict = ["self":self]
    NSLayoutConstraint.activate(
      NSLayoutConstraint.constraints(withVisualFormat: "V:[self(70@500)]", options: [], metrics: nil, views: dict)
    )
  
  }
  
  
}

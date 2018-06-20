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
    backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
    
    // set corner and shadow
    layer.cornerRadius = 16.0;
    layer.shadowColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    layer.shadowOffset = CGSize(width: 2, height: 2)
    layer.shadowOpacity = 0.9
    
    // set size constraint
    let dict = ["self":self]
    NSLayoutConstraint.activate(
      NSLayoutConstraint.constraints(withVisualFormat: "V:[self(70@500)]", options: [], metrics: nil, views: dict)
    )
  
  }
  
  
}

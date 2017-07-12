//
//  CustomCell.swift
//  binaryCounter
//
//  Created by Erick Lui on 7/11/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit

protocol CustomCellDelegate: class {
  func updateSum(by controller: CustomCell, value: Int)
}

class CustomCell: UITableViewCell {
  
  var number: Int?
  weak var delegate: CustomCellDelegate?
  
  @IBOutlet weak var minusButton: UIButton!
  @IBOutlet weak var plusButton: UIButton!
  @IBOutlet weak var numberLabel: UILabel!
  
  @IBAction func plusButtonPressed(_ sender: UIButton) {
    delegate?.updateSum(by: self, value: number!)
  }
  
  @IBAction func minusButtonPressed(_ sender: UIButton) {
    delegate?.updateSum(by: self, value: number! * -1)
  }
}


//
//  ViewController.swift
//  binaryCounter
//
//  Created by Erick Lui on 7/11/17.
//  Copyright © 2017 Erick Lui. All rights reserved.
//

import UIKit
import Darwin

class BinaryCounterViewController: UIViewController, CustomCellDelegate {
  
  var sum = 0
  var num = [0, 1, 2, 3, 4, 5, 6, 7, 8,
             9, 10, 11, 12, 13, 14, 15]

  @IBOutlet weak var sumLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    sumLabel.text = "Total: \(sum)"
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  func updateSum(by controller: CustomCell, value: Int) {
    if value > 0 {
      sum += value
    } else {
      sum -= value * -1
    }
    sumLabel.text = "Total \(sum)"
  }
  
}

extension BinaryCounterViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return num.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
    cell.delegate = self
    cell.number = Int(pow(Double(10), Double(num[indexPath.row])))
    cell.numberLabel.text = "\(cell.number!)"
    return cell
  }
}

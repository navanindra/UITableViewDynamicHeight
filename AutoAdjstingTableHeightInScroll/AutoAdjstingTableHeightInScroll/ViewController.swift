//
//  ViewController.swift
//  AutoAdjstingTableHeightInScroll
//
//  Created by Navanindra Vats on 27/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableTop:TableViewAdjustedHeight! {
        didSet {
            tableTop.delegate = self
            tableTop.dataSource = self
        }
    }
    
    @IBOutlet weak var tableBottom:TableViewAdjustedHeight! {
        didSet {
            tableBottom.delegate = self
            tableBottom.dataSource = self
        }
    }
    
    let arr:[String] = ["When a user taps a text view, a keyboard appears; when a user taps Return in the keyboard, the keyboard disappears and the text view can handle the input in an application-specific way. You can specify attributes, such as font, color",
    "When a user taps a text view, a keyboard appears; when a user taps Return in the keyboard, the keyboard disappears and the text view can handle the input in an application-specific way. You can specify attributes, such as font, color",
"Sample Table view", "When a user taps a text view, a keyboard appears; when a user taps Return in the keyboard, the keyboard disappears and the text view can handle the input in an application-specific way. You can specify attributes, such as font, color, "]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableTop {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCellOne", for: indexPath) as! tableCellOne
            cell.lblTitle.text = arr[indexPath.row]
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tableCellTwo", for: indexPath) as! tableCellTwo
            cell.lblTitle.text = arr[indexPath.row]
            return cell
        }
    }
}


class tableCellOne:UITableViewCell {
    @IBOutlet weak var lblTitle:UILabel!
}

class tableCellTwo:UITableViewCell {
    @IBOutlet weak var lblTitle:UILabel!
}

//
//  AddItemTableViewController.swift
//  bucket-list-qpp
//
//  Created by William Tsai on 1/17/18.
//  Copyright © 2018 William Tsai. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    var delegate: AddItemTableViewControllerDelegate?
    
    var item: BucketListItem?
    
    var indexPath: NSIndexPath?
    
    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func saveBtnPressed(_ sender: UIBarButtonItem) {
        delegate?.saveBtnPressed(by: self, with: itemTextField.text!, at: item)
    }
    
    @IBAction func cancelBtnPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelBtnPressed(by: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item?.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

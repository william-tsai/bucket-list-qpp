//
//  AddItemTableViewControllerDelegate.swift
//  bucket-list-qpp
//
//  Created by William Tsai on 1/17/18.
//  Copyright © 2018 William Tsai. All rights reserved.
//

import UIKit

protocol AddItemTableViewControllerDelegate: class {
    func cancelBtnPressed(by controller: AddItemTableViewController)
    func saveBtnPressed(by controller: AddItemTableViewController, with newText: String, at listItem: BucketListItem?)
}

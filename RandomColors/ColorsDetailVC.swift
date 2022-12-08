//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Aaditya Singh on 08/12/22.
//

import UIKit

class ColorsDetailVC: UIViewController {
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .blue
    }


}

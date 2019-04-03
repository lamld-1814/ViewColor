//
//  ViewController.swift
//  ViewColor
//
//  Created by mac on 4/3/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewBlue: UIView!
    @IBOutlet weak var viewOrange: UIView!
    @IBOutlet weak var viewGreen: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewWhite = UIView()
        viewWhite.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(viewWhite)
        viewWhite.backgroundColor = UIColor.white
        
        NSLayoutConstraint.activate([
            viewWhite.widthAnchor.constraint(equalTo: self.viewOrange.widthAnchor, multiplier: 1/2),
            viewWhite.heightAnchor.constraint(equalTo: self.viewOrange.heightAnchor, multiplier: 1),
            viewWhite.trailingAnchor.constraint(equalTo: self.viewRed.trailingAnchor, constant: 0),
            viewWhite.bottomAnchor.constraint(equalTo: self.viewBlue.bottomAnchor, constant: 0)
        ])
    }


}


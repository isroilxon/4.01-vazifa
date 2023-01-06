//
//  SecondViewController.swift
//  4.01 vazifa
//
//  Created by mac on 05/01/23.
//

import UIKit

class SecondViewController: UIViewController {
    var name = String()
    let img = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        img.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(img)
        img.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        img.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        img.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        img.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        img.image = UIImage(named: "second")

    }
    

  

}

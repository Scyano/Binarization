//
//  ViewController.swift
//  Binary
//
//  Created by want17475186@icloud.com on 04/23/2018.
//  Copyright (c) 2018 want17475186@icloud.com. All rights reserved.
//

import UIKit
import Binary
import WebKit


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = Bundle(for: MyViewController.self)
        imageView.image = UIImage(named: "main", in: bundle, compatibleWith: nil)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let vc = WebViewController()
        let vc = MyViewController()
        vc.hello()
        navigationController?.pushViewController(vc, animated: true)

    }
}

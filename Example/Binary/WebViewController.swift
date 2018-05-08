//
//  WebViewController.swift
//  Binary_Example
//
//  Created by Scyano on 2018/5/3.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let web = WKWebView(frame: UIScreen.main.bounds)
        let request = URLRequest(url: URL(string: "https://www.baidu.com")!)
        view.addSubview(web)
        web.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  MyViewController.swift
//  Binary
//
//  Created by Scyano on 23/04/2018.
//

import UIKit

public class MyViewController: UIViewController {

   @objc public var name: String = "scyano"
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        title = "hello"
        let image = UIImage(named: "Settings.bundle/hello.png", in: Bundle(for: MyViewController.self), compatibleWith: nil)
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        imageView.image = image
        view.addSubview(imageView)
        print("hello..............added")
    }

    @objc public func hello() {
        var name: String
        #if Reee
        name = "reee"
        print("this is reee")
        #endif
        #if DEBUG
        name = "debug"
        #endif
        print("hello \(name)")
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        let bundle = Bundle(for: MyViewController.self)
        let path = bundle.bundlePath + "/Resources.bundle"
        let b = Bundle(path: path)
        super.init(nibName: "MyViewController", bundle: b!)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var imageView: UIImageView = {
       let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        imageView.center = self.view.center
        return imageView
    }()

}

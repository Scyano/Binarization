//
//  BinaryRouter.swift
//  Binary
//
//  Created by Scyano on 2018/4/9.
//

import UIKit

public class MyViewController: UIViewController {

   @objc public var name: String = "scyano"
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        title = "hello"
    }

    @objc public func hello(name: String) {
        print("hello, it's \(name)")
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: BinaryRouter.resourceBundle)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

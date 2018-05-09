//
//  BinaryRouter.swift
//  Binary
//
//  Created by Scyano on 2018/4/9.
//

public final class BinaryRouter: NSObject {
    
    @objc public enum Environment: Int {
        case development
        case production
    }
    
    @objc public static let shared = BinaryRouter()
    
    public static var resourceBundle: Bundle {
        let rootBundle = Bundle(for: BinaryRouter.self)
        guard let bundleURL = rootBundle.url(forResource: "Resources", withExtension: "bundle") else { return rootBundle }
        guard let resourceBundle = Bundle(url: bundleURL) else { return rootBundle }
        return resourceBundle
    }
    
    @objc public var currentEnvironment: Environment {
        set {
            environment = newValue
        }
        get {
            return environment
        }
    }
    
    internal var imageHost: String {
        switch environment {
        case .development:
            return "https://devimage.abc.com"
        case .production:
            return "https://image.abc.com"
        }
    }
    
    internal var environment: Environment = .development {
        didSet {
            updateEnvironmentConfiguration()
        }
    }
    
    
    private func updateEnvironmentConfiguration() {
        
    }
}

import UIKit
import AppLifecycleObserver

final class ViewController: UIViewController {
    
    private let appLifecycleSubject = AppLifecycleSubject.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        subscribeAppLifecycleNotification()
    }
    
    deinit {
        unsubscribeAppLifecycleNotification()
    }
    
    private func subscribeAppLifecycleNotification() {
        print("#function = \(#function)")
        appLifecycleSubject.addObserver(observer: self, selector: .observeApplicationWillEnterForeground, name: .UIApplicationWillEnterForeground)
        appLifecycleSubject.addObserver(observer: self, selector: .observeApplicationDidEnterBackground, name: .UIApplicationDidEnterBackground)
        appLifecycleSubject.addObserver(observer: self, selector: .observeShouldSaveApplicationState, name: .ShouldSaveApplicationState)
    }
    
    private func unsubscribeAppLifecycleNotification() {
        print("#function = \(#function)")
        appLifecycleSubject.removeObserver(observer: self, name: .UIApplicationWillEnterForeground)
        appLifecycleSubject.removeObserver(observer: self, name: .UIApplicationDidEnterBackground)
        appLifecycleSubject.removeObserver(observer: self, name: .ShouldSaveApplicationState)
    }
}

// MARK: - AppLifecycleObserver

extension ViewController: AppLifecycleObserver {
    
    func observeApplicationWillEnterForeground() {
        print("#function = \(#function)")
    }
    
    func observeApplicationDidEnterBackground() {
        print("#function = \(#function)")
    }
    
    func observeShouldSaveApplicationState() {
        print("#function = \(#function)")
    }
}

// MARK: - Selector

private extension Selector {
    
    static let observeApplicationWillEnterForeground = #selector(ViewController.observeApplicationWillEnterForeground)
    
    static let observeApplicationDidEnterBackground = #selector(ViewController.observeApplicationDidEnterBackground)
    
    static let observeShouldSaveApplicationState = #selector(ViewController.observeShouldSaveApplicationState)
}

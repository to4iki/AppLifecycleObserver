import Foundation

@objc public protocol AppLifecycleObserver: class {

    @objc optional func observeApplicationWillEnterForeground()

    @objc optional func observeApplicationDidEnterBackground()
    
    @objc optional func observeShouldSaveApplicationState()
}

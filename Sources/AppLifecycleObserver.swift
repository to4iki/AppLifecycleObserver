import Foundation

public protocol AppLifecycleObserver: class {

    func observeApplicationWillEnterForeground()

    func observeApplicationDidEnterBackground()
}

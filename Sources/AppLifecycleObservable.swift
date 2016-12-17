import UIKit

public protocol AppLifecycleObservable {

    func addObserver<T: AppLifecycleObserver>(observer: T, selector: Selector, name: NSNotification.Name) where T: UIViewController

    func removeObserver<T: AppLifecycleObserver>(observer: T, name: NSNotification.Name) where T: UIViewController

    func notifyApplicationWillEnterForeground()

    func notifyApplicationDidEnterBackground()
}

public struct AppLifecycleSubject: AppLifecycleObservable {

    public static let sharedInstance = AppLifecycleSubject()

    private let notificationCenter = NotificationCenter.default

    private init () {}

    public func addObserver<T: AppLifecycleObserver>(observer: T, selector: Selector, name: NSNotification.Name) where T : UIViewController {
        notificationCenter.addObserver(observer, selector: selector, name: name, object: nil)
    }

    public func removeObserver<T: AppLifecycleObserver>(observer: T, name: NSNotification.Name) where T : UIViewController {
        notificationCenter.removeObserver(observer, name: name, object: nil)
    }

    public func notifyApplicationWillEnterForeground() {
        notificationCenter.post(name: .UIApplicationWillEnterForeground, object: nil)
    }

    public func notifyApplicationDidEnterBackground() {
        notificationCenter.post(name: .UIApplicationDidEnterBackground, object: nil)
    }
}

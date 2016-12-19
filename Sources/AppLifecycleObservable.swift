import UIKit

public protocol AppLifecycleObservable {

    func addObserver<T: AppLifecycleObserver>(observer: T, selector: Selector, name: NSNotification.Name) where T: UIViewController

    func removeObserver<T: AppLifecycleObserver>(observer: T, name: NSNotification.Name) where T: UIViewController
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
}

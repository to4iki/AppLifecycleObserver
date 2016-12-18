import UIKit
import AppLifecycleObserver

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        AppLifecycleSubject.sharedInstance.notifyApplicationWillEnterForeground()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        AppLifecycleSubject.sharedInstance.notifyApplicationDidEnterBackground()
    }
}



import UIKit
import UserNotifications


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        prepareForPushnotifications(for: application)
        // Override point for customization after application launch.
       // let timer = UserInterractionSetup()
      
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let token = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        print(token)
    }
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        print(error.localizedDescription)
    }
    
    func prepareForPushnotifications(for application:UIApplication){
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { (status, error) in
            if error != nil{
                print(error?.localizedDescription ?? "")
                return
            }
            DispatchQueue.main.async {
                application.registerForRemoteNotifications()
            }
        }
    }
   
    func calculateMean(_ nums:Int...)->Double{
        var total = 0
        for num in nums {
            total += num
        }
        return Double(total/nums.count)
       
    }
}

class LivingBeing{
    var age:Int?
    init(age:Int?) {
        if let age = age{
            self.age=age
        }
    }
}

class Animal:LivingBeing{
    var type:String?
    init(age:Int?,type:String?) {
        if let type = type{
            self.type=type
        }
        super.init(age: age ?? 0)
    }
}

class Human:LivingBeing{
    var name:String?
    init(age:Int?,name:String?) {
        if let name = name{
            self.name=name
        }
        super.init(age: age ?? 0)
    }
}


import Foundation
import UIKit

public class ViewModel {
    
    public func fectchingDataFromServer(completion:@escaping(String)->()){
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now()+3) {
            completion("success")
        }
    }
}

public class Greeting{
    func sayHi(fname:String?,lname:String?)->String?{
        if let fname = fname, let lname = lname {
            return "Good to see you, Mr. \(fname) \(lname)"
        }
        if let fname = fname {
            return "Hi Mr. \(fname)"
        }
        if let lname = lname {
            return "Hello, Mr. \(lname)"
        }
        return nil
    }
}

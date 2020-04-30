
import UIKit

class Diamens{
    var l,b:Int
    init(l:Int,b:Int) {
        self.l = l
        self.b = b
    }
    var area:Int{
        get{
            return l*b
        }
        set{
            l = newValue/b
            b = newValue/l
        }
    }
    lazy var name = "welcome"
    lazy var test:String = {
       return "diamens"
    }()
     var test2:String = {
       return "diamens"
    }()
}
class Employee {
    var id:Int
    init(id:Int) {
        self.id = id
    }
}
class DataViewController: UIViewController {
 
    var emp : Employee? {
        didSet{
            print("called after set a value")
            if let id = emp?.id{
                print("new id :\(id) and old id \(oldValue?.id)")
            }
        }
        willSet{
            print("called before set a value")
            if let id = emp?.id{
                print("new id: \(newValue?.id)")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emp = Employee(id: 10)
        self.emp?.id = 20
        print(emp?.id)
    }

    func test(name:String?) {
        defer {
        print("hello")
        }
        defer {
        print("welcome")
        }
       guard let nam = name else { return
        
       }
      
       print(nam)
    }

    @IBAction func actionForLoadData(_ sender: UIButton) {
        DispatchQueue.global(qos: .background).async {
            if let bundle = Bundle.main.path(forResource: "document", ofType: "json"){
                do {
                    let data = try Data(contentsOf: URL(fileURLWithPath: bundle))
                    DispatchQueue.main.async {
                        print(data.count)
                     }
                } catch  {
                    
                }
            }
        }
    }
    func linearSerch<T:Equatable>(_ arr:[T], _ obj:T)->Int?{
        for (i , v) in arr.enumerated() where v == obj {
            return i
        }
            return nil
    }
    func insertionSort(_ array: [Int]) -> [Int] {
        var a = array             // 1
        for x in 1..<a.count {         // 2
            var y = x
            while y > 0 && a[y] < a[y - 1] { // 3
                a.swapAt(y - 1, y)
                y -= 1
            }
        }
        return a
    }

}
class A:Equatable{
    static func == (lhs: A, rhs: A) -> Bool {
        return lhs.a == rhs.a
    }
    
    var a:Int
    init(a:Int) {
        self.a = a
    }
}
class B:A, CustomStringConvertible{
   
    var b:Int
    init(a:Int,b:Int) {
        self.b=b
        super.init(a: a)
    }
    convenience init(){
        self.init(a:10,b:20)
    }
    convenience override init(a:Int) {
        self.init(a:a,b:20)
    }
    var description: String{
           return "a:\(a) and b:\(b)"
       }
}

struct Stack<T>:CustomStringConvertible{
    
    
    fileprivate var arr = [T]()
    
    public var isEmpty:Bool {
        return arr.isEmpty
    }
    
    public var count:Int {
        return arr.count
    }
    
    public mutating func push (_ item:T){
        arr.append(item)
    }
    public mutating func pop () -> T?{
        return arr.popLast()
    }
    public var last:T?{
        return arr.last
    }
    var description: String {
        return arr.map{"\($0)"}.joined(separator: ",")
    }
}
struct C :CustomStringConvertible {
    var name:String
    var description: String{
        return name
    }
}

struct Queue<T>:CustomStringConvertible{
    fileprivate var items = [T]()
    
    public var isEmpty:Bool{
        return items.isEmpty
    }
    
    public var count:Int{
        return items.count
    }
    
    public mutating func enqueue(_ item:T){
        items.append(item)
    }
    
    public mutating func dequeue() -> T? {
        if items.isEmpty{
            return nil
        }
        else{
        return items.removeFirst()
        }
    }
    var description: String{
        return items.map{"\($0)"}.joined(separator: ",")
    }
}
class Human1 {
    var fname:String
    var lname:String
    //lazy var email:String
    init(lname:String,fname:String) {
        self.lname = lname
        self.fname = fname
         print("Person Class is being initialised")
    }
    deinit {
           print("Person Class is being de-initialised")
       }
    lazy var fullName : () -> String = { [unowned self] in
        return  "\(self.fname)  \(self.lname)"
    }
    var name:String{
        return "\(fname) "
    }
}
class Product{
    var name:String
    init?(name:String){
        if name.isEmpty{
            return nil
        }
        self.name = name
    }
}
class Cart:Product,CustomStringConvertible{
    var quantity:Int
    init?(name:String,quantity:Int) {
        if quantity<1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
    var description: String{
        return "\(self.name) and \(self.quantity)"
    }
}
struct Test:CustomStringConvertible{
    var age:Int
    init?(age:Int){
        if age < 1 {
            return nil
        }
        self.age = age
    }
    var description: String
    {
        return "\(age)"
    }
}

class AA{
    var a:Int
    required init(a:Int) {
        self.a = a
        print("AA")
    }
}
class BB:AA{
    required init(a: Int) {
        fatalError("init(a:) has not been implemented")
    }
}
enum Student{
    case Name(String)
    case age(Int)
}

class Company{
    var vender:Vender?
}
class Vender{
    var name:String?
}

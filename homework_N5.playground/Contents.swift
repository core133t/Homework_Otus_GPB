import Foundation

class Employee {
    public var name:String
    public var id:Int
    private var salary:Int = 0
    private var experienceCoeff:Int = 1
    public var balance:Int = 0
    
    
    init(name:String, id:Int) {
        self.name = name
        self.id = id
    }
    
    convenience init(name:String, id:Int, salary:Int, experience:Int) {
        self.init(name:name,id:id)
        self.salary = salary
        if experience>1 {
            self.experienceCoeff = experience
        }
    }
    
    public func getNameOfEmployee()-> Void{
        print("Name:\(self.name) | Id:\(self.id) | Job title: \(String(describing: type(of: self)))")
    }
    
    internal func paySalary() -> Void {
        print("\(self.name) received a salary of \(salary*experienceCoeff)$.")
        self.balance = self.balance+salary*experienceCoeff
        print("\(self.name) balance:\(self.balance)$")
    }
    
    func changeSalary(diffSalary:Int) -> Void {
        self.salary = self.salary+diffSalary
        print("\(self.name) new salary:\(self.salary)$.")
    }
    
    func work() -> Void {
        print("Your Employee:\(self.name) are working")
    }
    
}

class Workman: Employee {
    private var angryFactor = 0
    // workman dont need (workamanStatus) like a manager, because he works all the time.
    
    override func work() {
        print("Your Workman:\(name) are loading boxes into the car")
        angryFactor+=2
    }
    
    func checkAngryFactor() {
        if angryFactor < 10 {
            print("Workman:\(name) is in good condition and ready to work further")
        }else {
            print("Workman:\(name) is very angry. Can break work and quarrel with the manager")
        }
    }
    
    func calmDown() {
        self.changeSalary(diffSalary: 10)
        angryFactor = 0
        print("Workman:\(name) calmed down and ready to work on")
    }
}

class Manager: Employee {
    var managerPremium:Int = 100
    private var managerStatus:String = "chill"
    
    override func work() {
        managerStatus = "work"
        print("Your manager:\(self.name) stop chill and start distributes tasks to staff. He thinks he's doing important work")
        self.changeSalary(diffSalary: managerPremium)
        print("Manager's salary grows with every action.")
    }
    
    func chill() {
        managerStatus = "chill"
        print("Your manager:\(name) go to chill and stop work")
    }
    
    func checkStatus() {
        print("Your manager:\(name) Status:\(managerStatus) now")
    }
}
//***********************DemoOfUseAndPolymorphism**************************

let employee = Employee(name: "Vasya", id: 1)
let worker = Workman(name: "Oleg", id: 2, salary: 100, experience: 1)
let manager = Manager(name: "Stefan", id: 3, salary: 500, experience: 2)

employee.getNameOfEmployee()
worker.getNameOfEmployee()
manager.getNameOfEmployee()
print()
//polymorphism
employee.work()
worker.work()
manager.work()
print()
employee.paySalary()
worker.paySalary()
manager.paySalary()
print()
worker.checkAngryFactor()
manager.checkStatus()
manager.chill()




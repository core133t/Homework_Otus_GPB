import Foundation

//******************************FirstTask********************************

func multiplicationToString(_ one:Int, _ two:Int) -> String {
    return "\(one)*\(two)=\(one*two)"
}

func additionToString(_ one:Int, _ two:Int) -> String {
    return "\(one)+\(two)=\(one+two)"
}

func outCalculationFunc(inputFunc:(Int,Int)->String, firstNumb:Int, secondNumb:Int) -> Void {
    print("Your solution in string form: \(inputFunc(firstNumb,secondNumb))")
}

outCalculationFunc(inputFunc: multiplicationToString(_:_:), firstNumb: 2, secondNumb: 8)
outCalculationFunc(inputFunc: additionToString(_:_:), firstNumb: 16, secondNumb: 14)

//******************************SecondTask********************************

func functionWithClosures(firstNumb a:Int,secondNumb b:Int) -> String {
    let sum = {(a,b) -> Int in
        return a+b
    }
    let division = {(a,b) -> Int? in
        if b==0 {
            return nil
        }else{
            return a/b
        }
    }
    let output = {() -> String in
        return "Result of two clousers-> sum:\(sum(a,b)) an division:\(String(describing: division(a,b)))"
    }
    
    return output()
}

print(functionWithClosures(firstNumb: 20, secondNumb: 5))
print(functionWithClosures(firstNumb: 20, secondNumb: 0))

//******************************ThirdTask********************************

func functionAddWithAutoclosure (_ first: @autoclosure ()->String, _ second: @autoclosure ()->String) {
    var newString = first()+second()
    print("Your new string -> \(newString)")
}

functionAddWithAutoclosure("Pasha", " is a engineer")
functionAddWithAutoclosure("Gena", " is a bad guy")

//******************************FourthTask********************************

func functionRoadLength(_ start:Int, _ end:Int)->String{
    func error()->String{
        let error = "Start of the road can not be greater than the end"
        return error
    }
    let diff = {(start,end) -> Int in
        return end-start
    }
    
    if diff(start,end)<0{
        return error()
    }else{
        if diff(start,end)==0{
            return "You are in the end"
        }else{
            return "You need to go \(diff(start,end)) steps"
        }
    }
}

print(functionRoadLength(1, 5))
print(functionRoadLength(5, 4))
print(functionRoadLength(5, 5))
//******************************FifthTask********************************

func genericFuncMap<T>(for array:[T], _ transform: (T) -> T) ->[T] where T: AdditiveArithmetic {
    var result: [T] = []
    for element in array {
        result.append(transform(element))
    }
    return result
}

print(genericFuncMap(for: [1,2,3,4], {$0*$0}))
print(genericFuncMap(for: [1.1,2.2,3.3,4.4], {$0+5}))

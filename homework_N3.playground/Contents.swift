import Foundation

//******************************FirstTask***********************************
var exampleInt1 = 1001
var exampleInt2 = 1999

func sumOfTwoInt(_ first: Int, _ second:Int) -> Int {
    return first+second
}

print(sumOfTwoInt(exampleInt1,exampleInt2))
//******************************SecondTask***********************************
var exampleTuple = (18,"Enotov")

func convertNumToStr(_ tuple:(num:Int,str:String)) -> String {
    return String(tuple.num)+" "+tuple.str
}

print(convertNumToStr(exampleTuple))
//******************************ThirdTask**************************************
typealias call = () -> Void
var exampleClouser:call? = {
    print("optional clouser was call")
}

func checkNum(_ clous:call?, _ num:Int) -> Void{
    if num>0 {
        if let unwrappedClous = clous {
            unwrappedClous()
        }else {
            print("input clouser was nil")
        }
    }else{
        print("number not greater than zero")
    }
}

checkNum(exampleClouser, 4)
exampleClouser = nil
checkNum(exampleClouser, 4)
checkNum(exampleClouser, 0)
//******************************FourthTask***********************************

func checkLeapYear(_ year:Int) -> Bool {
    if year%400 == 0 {
        return true
    }else if year%100 == 0 {
        return false
    }else if year%4 == 0 {
        return true
    }else{
        return false
    }
}

print(checkLeapYear(2000))
print(checkLeapYear(1700))
print(checkLeapYear(2012))
print(checkLeapYear(2021))




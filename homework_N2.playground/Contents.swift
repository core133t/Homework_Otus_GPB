import Foundation

//******************************FirstTask***********************************
var firstExampleArray = [2, 4, -24, 56, 23, 12, 124, 4, 5, 89, -10]

func firstSolution(_ array: inout [Int]) -> [Int]{
    var minIndex = 0
    var maxIndex = 0
    
    for i in 0..<array.count{
        if array[i]>array[maxIndex] {
            maxIndex=i
        }else if array[i]<array[minIndex]{
            minIndex=i
        }
    }
    (array[maxIndex], array[minIndex]) = (array[minIndex], array[maxIndex])
    return array
}
print(firstSolution(&firstExampleArray))

//******************************SecondTask***********************************
var exampleArrOne:[Character] = ["a","s","d","[","f","5","o","6","m"]
var exampleArrTwo:[Character] = ["m","f","v","[","6","1","s",","]

func secondSolution(_ arrOne: inout [Character],_ arrTwo: inout [Character]) -> [Character]{
    let resultArray = arrOne.filter{arrTwo.contains($0)}
    return resultArray
}
print(secondSolution(&exampleArrOne, &exampleArrTwo))

//******************************ThirdTask************************************
var exampleDict = ["Aleksey":"qwerty",
                   "Oleg":"123456",
                   "Polina":"donttrycrackme!!18,.",
                   "Nika":"myPass",
                   "OBender":"favoriBlueRio2018",
                   "Gazik":"pass12345678"]

func thirdSolution(_ dict: inout Dictionary<String,String>) ->[String]{
    let arrayOfName = dict.filter{$0.value.count>10}.map{"\($0.0)"}
    return arrayOfName
}
print(thirdSolution(&exampleDict))



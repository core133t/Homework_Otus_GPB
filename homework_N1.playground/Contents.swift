import Foundation

var test = [2, 2, 5, 6, 8, 78, 67, 6, 6]
var input:[Int] = [] // создадим входной массив из 200 случайных чисел от 0 до 1000
for _ in 0..<200 {
    input.append(Int.random(in: 0...1000))
}

func Solution(_ input:[Int]) -> Int {
    var set:Set<Int> = []
    var firstIndex = -1
    for i in (0..<input.count).reversed() {
        var (inserted, _) = set.insert(input[i])
        if inserted == true {
            set.insert(input[i])
        }else {
            firstIndex = i
        }
    }
    
return firstIndex
}

//print(Solution(test))
print(Solution(input))

// скорость: O(N) потому что мы всего один раз пройдем по массиву
// памаять: O(N) потому что мы создаем сэт в котором в худшем случае будет N элементов


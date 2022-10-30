import Foundation

class Stack<Element> {
    
    var stack:[Element] = []
    init(_ stack:[Element]) {
        self.stack = stack
    }
    
    
    var count:Int {
        get {
            return stack.count
        }
    }
    
    func push (_ element:Element) -> Void {
        stack.append(element)
    }
    
    func pop () -> Element? {
        stack.popLast()
    }
    
    func peek () -> Element? {
        return stack.last
    }
    
    func clear () -> Void {
        stack.removeAll()
    }
}

/*      Example for using Stack
В одной компьютерной игре игрок выставляет в линию шарики разных цветов. Когда образуется непрерывная цепочка из трех и более шариков одного цвета, она удаляется из линии. Все шарики при этом сдвигаются друг к другу, и ситуация может повториться.

Напишите программу, которая по данной ситуации определяет, сколько шариков будет "уничтожено". Естественно, непрерывных цепочек из трех и более одноцветных шаров в начальный момент может быть не более одной.

Входные данные
Вводится цвета шариков (от 0 до 9, каждому цвету соответствует свое целое число).

Выходные данные
Требуется вывести количество шариков, которое будет "уничтожено".

Примеры
входные данные
5 1 3 3 3 2
выходные данные
3
*/

var stEx1 = Stack<Int>([1, 3, 3, 3, 2])
var stEx2 = Stack<Int>([1, 4, 4, 4, 4, 1, 1])


func Solution (_ st:inout Stack<Int>) -> Int {
    var st2 = Stack<Int>([])
    var answer = 0
    var now = 1
    
    while st.count>0 {
        st2.push(st.peek()!)
        st.pop()
        while st2.peek() == st.peek() {
            st2.push(st.peek()!)// знаю что форс анврап плохо, но в рамках задачки норм
            st.pop()
            now+=1
        }
        if now>=3 {
            for _ in 0..<now {
                st2.pop()
            }
            answer += now
            now = 1
            while st2.count > 0 {
                st.push(st2.peek()!)
                st2.pop()
            }
        }
        now = 1
    }
    
    return answer
}

print(Solution(&stEx1))
print(Solution(&stEx2))













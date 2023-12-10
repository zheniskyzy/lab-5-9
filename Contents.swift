import UIKit

// Lab 4 Задание 1
func introduceMyself(){
    print("Hello MobyDev")
}
introduceMyself()

// Задание 2
//2.1
var steps: Int = 0
func incrementSteps(){
    steps += 1
    print(steps)
}
incrementSteps()
incrementSteps()
incrementSteps()

//2.2
/* Тут я поменяла тип данных вместо Int на Double так как
 в принимающих параметрах указан тип данных Double
 Указала его потому что операции в if  нужно было производить
 а оно не производилось с разными типами данных
 */
let goal:Double = 10000
var steps2:Double = 2000
func progressUpdate(steps: Double, goal: Double){
    if steps < goal * 0.1{
        print("У вас хорошее начало")
    }
    else if steps < goal / 2{
        print("Вы почти на полпути!")
    }
    else if steps < goal * 0.9{
        print("Вы на полпути!")
    }
    else if steps < goal{
        print("Вы почти у цели!")
    }else{
        print("Вы превзошли свою цель!")
    }
}
progressUpdate(steps: steps2, goal: goal)

// Задание 3
func introduction(name:String, home:String, age:Int){
    print("\(name), \(age) лет, \(home)")
}
introduction(name: "Madina", home: "Almaty", age: 26)

// Задание 4
func progressUpdate1(steps:Int, goal:Int){
    if Double(steps) < Double(goal) * 0.1{
        print("У вас хорошее начало")
    }
    else if steps < goal / 2{
        print("Вы почти на полпути!")
    }
    else if Double(steps) < Double(goal) * 0.9{
        print("Вы на полпути!")
    }
    else if steps < goal{
        print("Вы почти у цели!")
    }else{
        print("Вы превзошли свою цель!")
    }
}
progressUpdate(steps: 9343, goal: 10005)

//4.2
func pacing(currentDistance:Double, totalDistance:Double, currentTime:Double, goalTime:Double){
    var stepTemp:Double = currentTime/(currentDistance/totalDistance)
    if stepTemp > goalTime{
        print("Так держать!")
    }else{
        print("Тебе нужно поднапрячься немного сильнее!")
    }
}

// Задание 5
//5.1
func greeting(name:String) -> String {
    return "Привет \(name), как твои дела?"
}
print(greeting(name: "Madina"))

//5.2
func mult(a:Int, b:Int) -> Int{
    return a * b + 2
}
print(mult(a: 10, b: 5))

// Lab 5 Задание 1
var registrationList = [String]()
registrationList.append("Sara")
print(registrationList)
registrationList += ["Madina", "Serper", "Salta", "Abu"]
print(registrationList)
registrationList.insert("Almas", at: 2) // в качестве второго элемента вставить было задание, сделала по индксу, следовательно первый индекс
print(registrationList)
registrationList.insert("Alua", at: 6)
print(registrationList)
registrationList.removeLast()
let deletedItem = registrationList
print(deletedItem)

// Задание 2
var run: [String] = ["чулночный бег", "круговые движения", "разбег"]
var walk: [String] = ["прыжок", "повороты", "выпады"]
var challenges = [[String]]()
challenges.append(run)
challenges.append(walk)
print(challenges[1][0])
challenges.removeAll()
var newArr = ["прыжки","пробежка"]
if newArr.isEmpty{
    print("Начни делать упражнения")
}
else if newArr.count == 1{
    print("Вы выбрали задание \(newArr[0])")
}else{
    print("Вы выбрали несколько заданий")
}

//Задание 3
// не уверена правилтно ли сделала проверку
var month:[String:Int] = ["январь": 31, "февраль": 28, "март": 31]
month["апрель"] = 30
print(month)
var oldValue = month.updateValue(29, forKey: "февраль")
if let value = month["январь"]{
    print("January has \(value) day")
}

// Задание 4
// не уверена правилтно ли это сделала, может есть другой способ
let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Blue"]
var dictionary = [String: [String]]()
dictionary["Shapes"] = shapesArray
dictionary["Colors"] = colorsArray
print(dictionary)
if let value = dictionary["Colors"]{
    print(value[2])
}

// Задание 5
// не уверена правилтно ли это сделала
var stepDic: [String: Double] = ["Easy": 10.0, "Medium": 8.0, "Fast": 6.0]
print(stepDic)
stepDic["Sprint"] = 4.0
print(stepDic)
var oldValueOfMedium = stepDic.updateValue(7.5, forKey: "Medium")
var oldValueOfFast = stepDic.updateValue(5.8, forKey: "Fast")
print(stepDic)
stepDic["Sprint"] = nil
print(stepDic)
if let value = stepDic["Medium"]{
    print("Хорошо! Я буду поддерживать вас в темпе \(value) минута в милю")
}

//Lab 6 Задание 1
//1.1
for i in 1...100{
    print(i)
}
//1.2
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for (index, char) in alphabet.enumerated(){
    print("\(index). \(char)")
}
/* вот альтернатива решения, правильная ли ?
 let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 var count = 0
for i in alphabet{
    count += 1
    print("\(count). \(i)")
}
*/

//1.3
var countryDic = ["Kazakhstan": "Astana", "Russion": "Moskow", "Uzbekistan": "Tashkent"]
for i in countryDic{
    print("\(i.key) - \(i.value)")
}

// Задание 2
var movements = ["прыжки", "приседания", "отжимания"]
for i in movements{
    print(i)
}
var movementsDic = [String: Int]()
var puls = 70
for move in movements{
    movementsDic[move] = puls
    puls += 5
}
for i in movementsDic{
    print("Ваш пульс при \(i.key) равен \(i.value)")
}

//Задание 3
// почему то все равно показывает в выводе 1 и генерация продолжается
while Int.random(in: 0...6) != 0 {
    print("рандомное число \(Int.random(in: 0...6))")
    if Int.random(in: 0...6) == 6{
        break
    }
}

//Задание 4
let cadence: Int = 150
var testSteps: Int = 0
while testSteps != 10{
    print("Сделайте шаг")
    testSteps += 1
}
Thread.sleep(forTimeInterval: 60/Double(cadence)) // пришлось приобразовать в double
let cadence1: Int = 150
var testSteps1: Int = 0
repeat{
    print("Сделайте шаг")
    testSteps1 += 1
}while testSteps1 != 10

// Задание 5
var cities = ["Almaty": "Ala", "Astana": "TSE", "Kyzylorda":"KZO", "Shymkent": "CIT"]
for (key,value) in cities{
    if key == "Almaty"{
        print("Я нашел свой город!")
        break
    }
    print("\(key) - \(value)")
}

// Задание 6
// некоторые задания сложны для понимая, надеюсь ] решаю их в правильном направлении
var movementHeartRates = ["прыжки": 80, "бег": 100, "приседания": 90]
let lowHR = 85
let highHR = 95
for (key,value) in movementHeartRates{
    for i in lowHR...highHR{ // создала цикл что бы найти нужное значение в границах
        if value == i{
            print("Вы могли бы сделать \(key)")
        }
    }
}

// Задание 7

 let  text: String = "Столица Казахстана - Астана"
var count = 0
for i in text.lowercased(){
    if i == "a"{
        count += 1 // вроде делаю что бы при наличии "а" каунт увеличивался
    }
}
print(count) // не понимаю почему все равно выводит 0

/* еще один вариант тоже не получился
 
 let  text: String = "Столица Казахстана - Астана"
for (index, value) in text.lowercased().enumerated(){
    if value != "a"{
        remove(index)
    }
}
print(text.count)*/

// Задание 8
let array = [0, 1, 2, 3, 4, 1, 5, 6, 2, 1]
var count1 = 0
for i in array {
    if i == 1{
        count1 += 1
    }
}
print(count) // тоже самое

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

//Lab 7
// Задание 1

struct Gps {
    var latitute = 0.0
    var longitude = 0.0
}

var somePlace = Gps()
print(somePlace.latitute , somePlace.longitude)
somePlace.latitute = 51.514004
somePlace.longitude = 0.125226
print(somePlace.latitute, somePlace.longitude)

// Задание 2 и 10 (создание метода и его вызов)
struct Book {
    var title = ""
    var author = ""
    var pages = 0
    var prices = 0.0
    
    func description(){
        print("типа тут факты о книги")
    }
}
var favoriteBook = Book()
favoriteBook.author = "Харуки Мураками"
favoriteBook.pages = 350
favoriteBook.prices = 2550
favoriteBook.title = "О чем я говорю, когда говорю о беге"
print("Факты о моей любимой книги: \(favoriteBook.author) , название книги:  \(favoriteBook.title) , цена \(favoriteBook.prices) тенге, у нее  \(favoriteBook.pages) станиц") // название книги не смогла внести в ковычки(личная инициатива которая не получилась)

favoriteBook.description() // вызов метода

// Задание 3
struct RunningWorkout{
    var distance = 0.0
    var time = 0.0
    var elevation = 0.0
}
var firstRun = RunningWorkout()
print("время занятий: \(firstRun.time), дистанция: \(firstRun.distance) и высота подьема: \(firstRun.elevation)")
firstRun.distance = 2396
firstRun.elevation = 94
firstRun.time = 15.3
print("время занятий: \(firstRun.time), дистанция: \(firstRun.distance) и высота подьема: \(firstRun.elevation)")

// Задание 4
struct Gps2 {
    var latitute:Double
    var longitude:Double
}
let someWhere = Gps2(latitute: 51.514004, longitude: 0.125226)
print(someWhere.latitute, someWhere.longitude)

// Задание 5
struct Book2 {
    var title: String
    var author: String
    var pages:Int
    var prices:Double
}
var favoriteBook2 = Book2(title: "О чем я говорю, когда говорю о беге", author: "Харуки Мураками", pages: 350, prices: 2550)
print("Факты о моей любимой книги: \(favoriteBook.author) , название книги:  \(favoriteBook.title) , цена \(favoriteBook.prices) тенге, у нее  \(favoriteBook.pages) станиц")

// Задание 6
struct Laptop{
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
}
var macBook = Laptop(yearPurchased: 2021)
var macAir = Laptop(yearPurchased: 2020)

// Задание 7
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    init(heightInInches: Double){
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    init(heightInCentimeters: Double){
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}
var someonesHeight = Height(heightInInches: 65)
print(someonesHeight.heightInCentimeters)
var myHeight = Height(heightInCentimeters: 170)
print("в дюймах \(myHeight.heightInInches) и в сантиметрах \(myHeight.heightInCentimeters)")

// Задание 8
struct User{
    var name: String
    var age: Int
    var weight: Double
    var height: Double
    var activityLevel = 5
}
 var meAsUser = User(name: "Madina", age: 26, weight: 70, height: 170)
print(meAsUser)

// Задание 9
struct Distance{
    var meters: Double
    var feet: Double
    init(meters: Double){
        self.meters = meters
        self.feet = meters * 3.28084
    }
    init(feet: Double){
        self.feet = feet
        self.meters = feet / 3.28084
    }
}
var mile = Distance(meters: 1600)
print("в фунтах \(mile.feet) и в метрах \(mile.meters)")

var myMile = Distance(feet: 8575)
print("в фунтах \(myMile.feet) и в метрах \(myMile.meters)")

// Задание 11
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    mutating func likesChange(){
        likes += 1
    }
}
var postE = Post(message: "hahah", likes: 3, numberOfComments: 10)
print(postE.likes)
postE.likesChange()
print(postE.likes)


// Задание 12
struct RunningWorkout1 {
    var distance: Double
    var time: Double
    var elevation: Double
    func postWorkoutStats(){
        print("Подробна инфа: время: \(time), дистанция \(distance) и высота \(elevation)")
    }
}
var runningWorkout1 = RunningWorkout1(distance: 1000, time: 80, elevation: 60)
runningWorkout1.postWorkoutStats()


// Задание 13
struct Steps {
    var steps: Int
    var goal: Int
    mutating func takeStep(){
      steps += 1
    }
}
var stepsE = Steps(steps: 20, goal: 100)
stepsE.takeStep()
print(stepsE.steps)

// Задание 14 не знаю правильно ли поняла задание
struct Rectangle{
    var width: Double
    var height: Double
    var area: Double {
        width * height
    }
}
var rectangle2 = Rectangle(width: 23, height: 10)
print(rectangle2.area)

// Задание 15
struct Height1 {
    var heightInInches: Double{
        didSet{
            var cm = heightInInches * 2.54
            if cm != heightInCentimeters{
                heightInCentimeters = cm
            }
        }
    }
    
    var heightInCentimeters: Double{
        didSet{
            var inch = heightInCentimeters / 2.54
            if inch != heightInInches{
                heightInInches = inch
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
}

var height1 = Height1(heightInInches: 200)
print(height1.heightInInches, height1.heightInCentimeters)
height1.heightInInches = 300
print(height1.heightInInches, height1.heightInCentimeters)

// Задание 16 не понимаю правильно ли я его решила :)
struct RunningWorkout2 {
    var distance: Double
    var time: Double
    var elevation: Double
    var averageMileTime: Double{
         (distance / 1600) / time
    }
    }
var runningWorkout2 = RunningWorkout2(distance: 500, time: 60, elevation: 70)
print(runningWorkout2.averageMileTime)

struct Steps3 {
    var steps: Int{
        willSet{
            var stepsPlusOne = steps + 1
            if stepsPlusOne == goal{
                print("поздравляю оно равно!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}
var steps3 = Steps3(steps: 9999, goal: 10000)
steps3.takeStep()

// Задание 17
// что-то сделала, что-то получилось, непонятно что

struct User2 {
    var userName: String
    var email: String
    var age: Int
    static var currentUser: User2 = User2(userName: "Madina", email: "madik_555@inbox.ru ", age: 26)
    
    func logIn(user2: User2){
        User2.currentUser = user2
        print( "\(User2.currentUser.userName) вошел в систему.")
    }
}
//создала два экземпляра, у одного вызываю метод и передаюему другой экземпляр
// и кажется что-то тут не так
var anotherUser = User2(userName: "Serper", email: "serper@gmail.com", age: 26)
var anotherUser2 = User2(userName: "Sultan", email: "sultik_456@gmail.com", age: 20)
anotherUser.logIn(user2: anotherUser2)


//Lab 8 Задание 1
class Spaceship {
    var name = ""
    var health = 0
    var position = 0
    func moveLeft(num: Int){
        if num < position{
            position -= 1
        }
    }
    func moveRight(num: Int){
        if num > position{
            position += 1
        }
    }
    func wasHit(){
        health -= 5
        if health <= 0{
            print("Извините, ваш корабль был сбит слишком много раз. Хотите сыграть еще раз?")
        }
    }
}
let falcon = Spaceship()
falcon.name = "Falcon"

falcon.moveLeft(num: -10) // а если сюда написать положительное число, ничего не произойдет, правильно ли это?
print(falcon.position)
falcon.moveLeft(num: -4)
print(falcon.position)
falcon.moveRight(num: 9)
print(falcon.position)

falcon.wasHit()
print(falcon.health)


// Задание 2
class Fighter: Spaceship {
    var weapon = ""
    var remainingFirePower = 5
    func fire(){
        if remainingFirePower > 0{
            remainingFirePower -= 1
        }else{
            print("У вас больше нет оружейной мощности")
        }
    }
}

var destroyer = Fighter()
destroyer.weapon = "лазер"
destroyer.remainingFirePower = 10
destroyer.name = "Destroyer"
print(destroyer.position)
destroyer.moveRight(num: 5)
print(destroyer.position)
/* Ответ почему 'weapon' на falcon не работает, потому что falcon экземпляр класса Spaceship.
 А weapon это свойство Fighter, т.е. Что бы иметь доступ к weapon, falcon должен
 наследоваться от Fighter. Вроде верно? :)
*/
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)
destroyer.fire()
print(destroyer.remainingFirePower)


// Задание 3
class ShieldedShip: Fighter {
    var shieldStrength = 25
    override func wasHit() {
        if shieldStrength > 0{
            shieldStrength -= 5
        }else{
           super.wasHit()
        }
    }
}
var defender = ShieldedShip()
defender.name = "Defender"
defender.weapon = "Cannon"
defender.moveRight(num: 50)
print(defender.position)
defender.fire()
print(defender.remainingFirePower)
defender.wasHit()
print("значение shieldStrength = \(defender.shieldStrength) и значение здоровья = \(defender.health)")

// Задание 4
/* не стала его делать и менять все в коде выше ибо
 ответы(решения) уже предоставлены в самой задаче
 Вроде ничего не упустила)))
 */

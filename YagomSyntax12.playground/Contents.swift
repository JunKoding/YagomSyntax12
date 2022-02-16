import Cocoa

// struct 구조체
// 프로퍼티 - 구조체 안에 있는 변수
// 메소드 - 구조체 안에 있는 함수




// 정의

// struct 이름 {
// 구현부
// }




// 프로퍼티 및 메소드

struct Sample {
    var mutableProperty: Int = 100 // 인스턴스 가변 프로퍼티
    let immutableProperty: Int = 100 // 인스턴스 불변 프로퍼티
    
    static var typeProperty: Int = 100 // 타입 프로퍼티
    
    // 인스턴스 메소드
    func instanceMethod() {
        print("instance method")
    }
    
    // 타입 메소드
    static func typeMethod() {
        print("type method")
    }
}




// 구조체 사용

// 가변 인스턴스
var mutable: Sample = Sample() // mutable이라는 인스턴스 생성

mutable.mutableProperty = 200 // mutable이라는 인스턴스에서 사용하는 프로퍼티
// 오류) mutable.immutableProperty = 200

// 불변 인스턴스
let immutable: Sample = Sample()

// 오류) immutable.mutableProperty = 200
// 오류) immutable.immutableProperty = 200

// 타입 프로퍼티 및 메소드
Sample.typeProperty = 300 // Sample이라는 구조체에서 사용하는 프로퍼티
Sample.typeMethod() // Sample이라는 구조체에서 사용하는 type method

// 오류) mutable.typeProperty = 400
// 오류) mutable.typeMethod()





// 학생 구조체

struct Student {
    var name: String = "Unknown"
    var `class`: String = "Swift" // class는 class타입이 존재하므로 그냥 못쓰고 `class` 강세표로 묶어서 사용한다. 한글일때는 ₩, 영어일때 `.
    
    static func selfIntroduce() {
        print("학생타입입니다.")
    }
    
    func selfIntroduce() {
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce() // 학생타입입니다. 타입 메소드로 빠짐.

var jun: Student = Student()
jun.name = "jun"
jun.class = "스위프트"
jun.selfIntroduce() // 저는 스위프트반 jun입니다. 인스턴스 메소드로 빠짐.

let yuri: Student = Student()

// 오류) yuri.name = "yuri"
// 가변 프로퍼티를 let으로 설정했기 때문에 변경이 불가능하다.
yuri.selfIntroduce()
// 저는 Swift반 Unknown입니다. 인스턴스 메소드로 빠짐.

import UIKit

var greeting: String = "Hello, playground"
print (greeting)
greeting = "hello world"
print (greeting)


var myInt: Int = 5
print (myInt)

//assign constant
let myString: String = "hi"
print((myString))

myInt += 3
print(myInt)

//normal function
func myFunc()
{
    let a = 5
    let b = 5
    print(a+b)
}
myFunc()

//function w/ parameters
func myFunc2(a:Int, b:Int)
{
    print(a+b)
}
myFunc2(a: 5, b: 6)

//putting default values for the parameter
func myFunc3(a:Int, b:Int=9)
{
    print(a+b)
}
myFunc3(a: 5)

//gives it a return parameter
func myFunc4(a:Int, b:Int=5)->Int
{
    return(a+b)
}
var ret = myFunc4(a: 5)
print (ret)

func myFunc5(number1 a:Int, number2 b:Int=5)
{
    
}
print(myFunc5(number1: 12))


//function overloading
func myFunc6(_ a:Int, _ b:Int)-> Int
{
    return(a+b)
}
print(myFunc6(5,20))

func myFunc7(a:Int, b:Int=5)->Int
{
    return(a+b)
}
var ret2 = myFunc4(a: 5)
print (ret2)

//the colon means scope. It means that it defines the value
//once you give a variable a type, you can't change it



//Swift Structures
//swift structures can be used to represent screens or any kind of view

struct MyChat
{
    //Properties: variables and constants
    //the variable is in the scope of the structure
    var msg:String = ""
    var prefix = "Tmobile Rep says: "
    //write a code
    
    var messagewithPrefix:String
    {
        return (prefix+msg)
    }
    //write functions
    
    func SendChat()
    {
        
        print(messagewithPrefix)
    }
    
    func DeleteChat()
    {
        
        print(messagewithPrefix)
    }
    
}


//write a swift instance
//a function inside a structure is also a method
struct MyStructure
{
    var msg:String = "Hello"
    

    func myFunc()
    {
        print(msg)
    }
    
}

var myInst : MyStructure = MyStructure()
myInst.msg = "Bye"
myInst.myFunc()

var myInst2:MyStructure = MyStructure()
myInst.msg = "Almost done... 2 more minutes"
myInst.myFunc()
    
//after platforms on xcode until today


func myFunc(a:Int, b:Int)->Int{

        return a+b

}

print("the sum is ", myFunc(a:3, b:5))

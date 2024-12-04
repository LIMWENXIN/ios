import UIKit


func fizzbuzz_game(start:Int, end:Int) -> String{
    var sentence:String = ""
    for number in start...end{
        if number % 3 == 0 && number % 5 == 0{
            sentence = sentence+"Number:\(number) FizzBuzz\n"
        }
        else if number % 5 == 0{
            sentence = sentence+"Number:\(number) Buzz\n"
        }
        else if number % 3 == 0{
            sentence = sentence+"Number:\(number) Fizz\n"
        }
    }
    print(sentence)
    return sentence
}
fizzbuzz_game(start: 1, end: 20)

/*
 Print numbers from 1 to 20.
 If a number is divisible by 3, print “Fizz”.
 If divisible by 5, print “Buzz”.
 If divisible by both, print “FizzBuzz”.
*/
/*
for number in 1...20{
    if number % 3 == 0{
        print("Number:\(number) Fizz")
    }
    else if number % 5 == 0{
        print("Number:\(number) Buzz")
    }
    else if number % 3 == 0 && number % 5 == 0{
        print("Number:\(number) FizzBuzz")
    }
    
}

*/

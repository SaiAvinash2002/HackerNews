//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by Varshitha Kesa on 8/13/25.
//

import XCTest
@testable import HackerNews

final class HackerNewsTests: XCTestCase {
    var objectCalculator:Calculator!
    var numberCheckDivisibility:CheckDivisibility!
    var checkPrime:PrimeCheck!
    var checkReverseString:ReverseString!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        objectCalculator=Calculator()
        numberCheckDivisibility=CheckDivisibility()
        checkPrime=PrimeCheck()
        checkReverseString=ReverseString()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        objectCalculator=nil

    }

    func testSum(){
        let sumValue=objectCalculator?.sum(10, 20)
        XCTAssertEqual(sumValue,30)
        
        let sumValue1=objectCalculator?.sum(nil, 20)
        XCTAssertEqual(sumValue1,20)
        
        let sumValue2=objectCalculator?.sum( 20,nil)
        XCTAssertEqual(sumValue2,20)
        
        let sumValue3=objectCalculator?.sum( nil,nil)
        XCTAssertEqual(sumValue3,0)
    }
    func testSub(){
        let subValue=objectCalculator?.sub(10, 20)
        XCTAssertEqual(subValue,-10)
        
        let subValue1=objectCalculator?.sub(nil, 20)
        XCTAssertEqual(subValue1,20)
        
        let subValue2=objectCalculator?.sub(44, nil)
        XCTAssertEqual(subValue2,44)
        
        let subValue3=objectCalculator?.sub(nil, nil)
        XCTAssertEqual(subValue3,0)
    }
    func testMul(){
        let mulValue=objectCalculator?.mul(10, 20)
        XCTAssertEqual(mulValue,200)
        
        let mulValue1=objectCalculator?.mul(nil, 20)
        XCTAssertEqual(mulValue1,20)
        
        let mulValue2=objectCalculator?.mul(34, nil)
        XCTAssertEqual(mulValue2,34)
        
        let mulValue3=objectCalculator?.mul(nil, nil)
        XCTAssertEqual(mulValue3,0)
    }
    func testDiv(){
        let divValue=objectCalculator?.div(10, 20)
        XCTAssertEqual(divValue,0.5)
        
        let divValue1=objectCalculator?.div(nil, 58)
        XCTAssertEqual(divValue1,58)
        
        let divValue2=objectCalculator?.div(79, nil)
        XCTAssertEqual(divValue2,79)
        
        let divValue3=objectCalculator?.div(nil, nil)
        XCTAssertEqual(divValue3,0)
        
        let divValue4=objectCalculator?.div(10, 0)
        XCTAssertEqual(divValue4,0)
    }
    
    func testCheckNumber(){
        let value1=numberCheckDivisibility?.checkNumber(15)
        XCTAssertEqual(value1,"FizzBuzz")
        
        let value2=numberCheckDivisibility?.checkNumber(18)
        XCTAssertEqual(value2,"Fizz")
        
        let value3=numberCheckDivisibility?.checkNumber(25)
        XCTAssertEqual(value3,"Buzz")
        
        let value4=numberCheckDivisibility?.checkNumber(77)
        XCTAssertEqual(value4,"77")
    }
    
    func testprimeNumber(){
        let value1=checkPrime?.primeNumber(7)
        XCTAssertEqual(value1,"Prime")
        
        let value2=checkPrime?.primeNumber(8)
        XCTAssertEqual(value2,"Not a Prime")
        
        let value3=checkPrime?.primeNumber(2)
        XCTAssertEqual(value3,"Prime")
        
        let value4=checkPrime?.primeNumber(1)
        XCTAssertEqual(value4,"Neither Prime nor Composite")
    }
    
    func testReverse(){
        let output1=checkReverseString?.reverse("Avinash")
        XCTAssertEqual(output1,"hsanivA")
        
        let output2=checkReverseString?.reverse("")
        XCTAssertEqual(output2,"")
    }
}


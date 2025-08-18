//
//  HackerNewsTests.swift
//  HackerNewsTests
//
//  Created by Sai Avinash Vagicherla on 8/13/25.
//

import XCTest
@testable import HackerNews

final class HackerNewsTests: XCTestCase {
    var objectCalculator:Calculator!
    var numberCheckDivisibility:CheckDivisibility!
    var checkPrime:PrimeCheck!
    var checkReverseString:ReverseString!
    var objLoginViewController:LoginViewController!
    var objCreateAccountViewController:CreateAccountViewController!
    
    override func setUpWithError() throws {
        objectCalculator=Calculator()
        numberCheckDivisibility=CheckDivisibility()
        checkPrime=PrimeCheck()
        checkReverseString=ReverseString()
        objLoginViewController=LoginViewController()
        objCreateAccountViewController=CreateAccountViewController()
    }

    override func tearDownWithError() throws {
        objectCalculator = nil
        numberCheckDivisibility = nil
        checkPrime = nil
        checkReverseString = nil
        objLoginViewController = nil
        objCreateAccountViewController = nil
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
    
    func testPrimeNumber(){
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
    
    func testValidateEmail(){
        let output1 = objLoginViewController?.validateEmail("avi@gmail.com")
        XCTAssertEqual(output1,true)
        
        let output2 = objLoginViewController?.validateEmail("klslk@gmal.com")
        XCTAssertEqual(output2,false)
        
        let output3 = objLoginViewController?.validateEmail("kfds")
        XCTAssertEqual(output3,false)
        
        let output4 = objLoginViewController?.validateEmail(nil)
        XCTAssertEqual(output4,false)
    }
    
    func testValidPassword(){
        let output1 = objLoginViewController?.validatePassword("@vidlsid123")
        XCTAssertEqual(output1,true)
        
        let output2 = objLoginViewController?.validatePassword("@isnd")
        XCTAssertEqual(output2,false)
        
        let output3 = objLoginViewController?.validatePassword(nil)
        XCTAssertEqual(output3,false)
    }
    
    func testValidateFirstName(){
        let output1 = objCreateAccountViewController?.validateFirstName("vagicheefwfe")
        XCTAssertEqual(output1,true)
        
        let output2 = objCreateAccountViewController?.validateFirstName("")
        XCTAssertEqual(output2,false)
        
        let output3 = objCreateAccountViewController?.validateFirstName(nil)
        XCTAssertEqual(output3,false)
    }
    
    func testValidateLastName(){
        let output1 = objCreateAccountViewController?.validateLastName("vagicherla")
        XCTAssertEqual(output1,true)
        
        let output2 = objCreateAccountViewController?.validateLastName("")
        XCTAssertEqual(output2,false)
        
        let output3 = objCreateAccountViewController?.validateLastName(nil)
        XCTAssertEqual(output3,false)
    }
    
    func testValidateGmail(){
        let output1 = objCreateAccountViewController?.validateGmail("vagicherla@gmail.com")
        XCTAssertEqual(output1,true)
        
        let output2 = objCreateAccountViewController?.validateGmail("vagicherla@gm.com")
        XCTAssertEqual(output2,false)
        
        let output3 = objCreateAccountViewController?.validateGmail(nil)
        XCTAssertEqual(output3,false)
        
        let output4 = objCreateAccountViewController?.validateGmail("saigmail.com")
        XCTAssertEqual(output4,false)
    }
    
    func testValidateAndConfirmPassword(){
        let output1 = objCreateAccountViewController?.validateAndConfirmPassword("@Gmailcom44","@Gmailcom44")
        XCTAssertEqual(output1,true)
        
        let output2 = objCreateAccountViewController?.validateAndConfirmPassword("skdl@99","skdl@99")
        XCTAssertEqual(output2,false)
        
        let output3 = objCreateAccountViewController?.validateAndConfirmPassword("LKLL434%","LKLL434%")
        XCTAssertEqual(output3,false)
        
        let output4 = objCreateAccountViewController?.validateAndConfirmPassword("NoDigit!","NoDigit!")
        XCTAssertEqual(output4,false)
        
        let output5 = objCreateAccountViewController?.validateAndConfirmPassword("",nil)
        XCTAssertEqual(output5,false)
        
        let output6 = objCreateAccountViewController?.validateAndConfirmPassword(nil,nil)
        XCTAssertEqual(output6,false)
    }
   }

//
//  GymTrenUITests.swift
//  GymTrenUITests
//
//  Created by Sofi on 25.02.2021.
//

import XCTest

class GymTrenUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExampleSuccess() throws {
        // UI tests must launch the application that they test.
        
        
        
        
        
        
        
        
        
        let app = XCUIApplication()
        app.launch()
        let signUpButton = app.buttons["Sign Up"]
        signUpButton.tap()
        
        let ivanovTextField = app.textFields["Ivanov"]
      
        ivanovTextField.tap()
        ivanovTextField.typeText("G")
        
        let ivanovMailComTextField = app.textFields["Ivanov@mail.com"]
        ivanovMailComTextField.tap()
        ivanovMailComTextField.typeText("@g")
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let secureTextField = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 0)
        secureTextField.tap()
        secureTextField.typeText("g")
        
        let secureTextField2 = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 1)
        secureTextField2.tap()
        secureTextField2.typeText("g")
        signUpButton.tap()
        ivanovTextField.tap()
        ivanovTextField.typeText("G")
        
        let secureTextField3 = app.secureTextFields["●●●●●●"]
        secureTextField3.tap()
        secureTextField3.typeText("g")
        app.buttons["Sign In"].tap()
    
        
       
    
     
     
        
//        let app = XCUIApplication()
//        app.launch()
//        let signUpButton = app.buttons["Sign Up"]
//        signUpButton.tap()
//        
//        let ivanovStaticText = app.staticTexts["Ivanov"]
//        ivanovStaticText.tap()
//        ivanovStaticText.typeText("J")
//        app.staticTexts["Ivanov@mail.com"].tap()
//        app.staticTexts["Ivanov@mail.com"].typeText("@J")
//        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//        let textField = element.children(matching: .textField).element(boundBy: 0)
//        textField.tap()
//        textField.typeText("J")
//        element.children(matching: .staticText).matching(identifier: "●●●●●●").element(boundBy: 0).tap()
//        textField.tap()
//        
//        let staticText = app.staticTexts["●●●●●●"]
//        staticText.tap()
//        textField.tap()
//        textField.typeText("J")
//        signUpButton.tap()
//        ivanovStaticText.tap()
//        ivanovStaticText.typeText("J")
//        
//        let textField2 = element.children(matching: .textField).element
//        textField2.tap()
//       
//        staticText.tap()
//        textField2.typeText("J")
//        app.buttons["Sign In"].tap()
      
                        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testExampleError() throws {
        // UI tests must launch the application that they test.
        
        
        
        
        
        
        
        
        
        let app = XCUIApplication()
        app.launch()
        let signUpButton = app.buttons["Sign Up"]
        signUpButton.tap()
        
        let ivanovTextField = app.textFields["Ivanov"]
      
        ivanovTextField.tap()
        ivanovTextField.typeText("G")
        
        let ivanovMailComTextField = app.textFields["Ivanov@mail.com"]
        ivanovMailComTextField.tap()
        ivanovMailComTextField.typeText("@g")
        
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
        let secureTextField = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 0)
        secureTextField.tap()
        secureTextField.typeText("g")
        
        let secureTextField2 = element.children(matching: .secureTextField).matching(identifier: "●●●●●●").element(boundBy: 1)
        secureTextField2.tap()
        secureTextField2.typeText("g")
        signUpButton.tap()
        ivanovTextField.tap()
        ivanovTextField.typeText("G")
        
        let secureTextField3 = app.secureTextFields["●●●●●●"]
        secureTextField3.tap()
        secureTextField3.typeText("g")
        app.buttons["Sign In"].tap()
    

     
        app.textFields["Ivanov"].tap()
        app.textFields["Ivanov"].typeText("ghj")
        
        let secureTextField4 = app.secureTextFields["●●●●●●"]
        secureTextField4.tap()
        secureTextField4.typeText("dfgh")
        
        app.buttons["Sign In"].tap()
        

        
//        let app = XCUIApplication()
//        app.launch()
//        let signUpButton = app.buttons["Sign Up"]
//        signUpButton.tap()
//
//        let ivanovStaticText = app.staticTexts["Ivanov"]
//        ivanovStaticText.tap()
//        ivanovStaticText.typeText("J")
//        app.staticTexts["Ivanov@mail.com"].tap()
//        app.staticTexts["Ivanov@mail.com"].typeText("@J")
//        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//        let textField = element.children(matching: .textField).element(boundBy: 0)
//        textField.tap()
//        textField.typeText("J")
//        element.children(matching: .staticText).matching(identifier: "●●●●●●").element(boundBy: 0).tap()
//        textField.tap()
//
//        let staticText = app.staticTexts["●●●●●●"]
//        staticText.tap()
//        textField.tap()
//        textField.typeText("J")
//        signUpButton.tap()
//        ivanovStaticText.tap()
//        ivanovStaticText.typeText("J")
//
//        let textField2 = element.children(matching: .textField).element
//        textField2.tap()
//
//        staticText.tap()
//        textField2.typeText("J")
//        app.buttons["Sign In"].tap()
      
                        

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

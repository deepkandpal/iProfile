//
//  iProfileUITests.swift
//  iProfileUITests
//
//  Created by Deep on 13/09/19.
//  Copyright © 2019 Deep. All rights reserved.
//

import XCTest

class iProfileUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   
    func testProfiledate(){
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["USERID - 001"]/*[[".cells.staticTexts[\"USERID - 001\"]",".staticTexts[\"USERID - 001\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["USERNAME - Deep"]/*[[".cells.staticTexts[\"USERNAME - Deep\"]",".staticTexts[\"USERNAME - Deep\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["SUMMARY - iOS native app developer with 10 years of experience"]/*[[".cells.staticTexts[\"SUMMARY - iOS native app developer with 10 years of experience\"]",".staticTexts[\"SUMMARY - iOS native app developer with 10 years of experience\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["SKILLS - Swift, Objective-C, JAVA, XCode"]/*[[".cells.staticTexts[\"SKILLS - Swift, Objective-C, JAVA, XCode\"]",".staticTexts[\"SKILLS - Swift, Objective-C, JAVA, XCode\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.children(matching: .cell).element(boundBy: 4).staticTexts["COMPANY - Infosys"].tap()
        tablesQuery.children(matching: .cell).element(boundBy: 5).staticTexts["ROLES - Tech Lead"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["JOINING DATE - 02-Nov-2015"]/*[[".cells.staticTexts[\"JOINING DATE - 02-Nov-2015\"]",".staticTexts[\"JOINING DATE - 02-Nov-2015\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["RESPONSIBILITIES - Worked as team lead, responsible for iOS native apps development"]/*[[".cells.staticTexts[\"RESPONSIBILITIES - Worked as team lead, responsible for iOS native apps development\"]",".staticTexts[\"RESPONSIBILITIES - Worked as team lead, responsible for iOS native apps development\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ACHEIVEMENTS - Received employee of the month award"]/*[[".cells.staticTexts[\"ACHEIVEMENTS - Received employee of the month award\"]",".staticTexts[\"ACHEIVEMENTS - Received employee of the month award\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.staticTexts["Profile of Steve with Profile Id as 002"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["USERID - 002"]/*[[".cells.staticTexts[\"USERID - 002\"]",".staticTexts[\"USERID - 002\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let usernameSteveStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["USERNAME - Steve"]/*[[".cells.staticTexts[\"USERNAME - Steve\"]",".staticTexts[\"USERNAME - Steve\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        usernameSteveStaticText.swipeUp()
        usernameSteveStaticText.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["SUMMARY - Android native app developer with 10 years of experience"]/*[[".cells.staticTexts[\"SUMMARY - Android native app developer with 10 years of experience\"]",".staticTexts[\"SUMMARY - Android native app developer with 10 years of experience\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["SKILLS - Android, Kotlin, JAVA"]/*[[".cells.staticTexts[\"SKILLS - Android, Kotlin, JAVA\"]",".staticTexts[\"SKILLS - Android, Kotlin, JAVA\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tablesQuery.children(matching: .cell).element(boundBy: 13).staticTexts["COMPANY - Infosys"].tap()
        tablesQuery.children(matching: .cell).element(boundBy: 14).staticTexts["ROLES - Tech Lead"].tap()
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["JOINING DATE - 02-Nov-2016"]/*[[".cells.staticTexts[\"JOINING DATE - 02-Nov-2016\"]",".staticTexts[\"JOINING DATE - 02-Nov-2016\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let responsibilitiesWorkedAsTeamLeadResponsibleForAndroidNativeAppsDevelopmentStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["RESPONSIBILITIES - Worked as team lead, responsible for android native apps development"]/*[[".cells.staticTexts[\"RESPONSIBILITIES - Worked as team lead, responsible for android native apps development\"]",".staticTexts[\"RESPONSIBILITIES - Worked as team lead, responsible for android native apps development\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        responsibilitiesWorkedAsTeamLeadResponsibleForAndroidNativeAppsDevelopmentStaticText.tap()
        
        let acheivementsReceivedEmployeeOfTheQuarterAwardStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["ACHEIVEMENTS - Received employee of the quarter award"]/*[[".cells.staticTexts[\"ACHEIVEMENTS - Received employee of the quarter award\"]",".staticTexts[\"ACHEIVEMENTS - Received employee of the quarter award\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        acheivementsReceivedEmployeeOfTheQuarterAwardStaticText.tap()
        responsibilitiesWorkedAsTeamLeadResponsibleForAndroidNativeAppsDevelopmentStaticText.swipeUp()
        acheivementsReceivedEmployeeOfTheQuarterAwardStaticText.tap()
        acheivementsReceivedEmployeeOfTheQuarterAwardStaticText.swipeUp()
    }

}

//
//  AstronomyUITests.swift
//  AstronomyUITests
//
//  Created by Cameron Collins on 5/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import XCTest

class AstronomyUITests: XCTestCase {

    private var app: XCUIApplication {
        XCUIApplication()
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        let app = XCUIApplication()
        app.launchArguments = ["UITesting"]
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        
        //Saving Photo
        /*app.collectionViews.children(matching: .cell).element(boundBy: 1).children(matching: .other).element.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Save to Photo Library"]/*[[".buttons[\"Save to Photo Library\"].staticTexts[\"Save to Photo Library\"]",".buttons[\"PhotoDetailViewController.SaveButton\"].staticTexts[\"Save to Photo Library\"]",".staticTexts[\"Save to Photo Library\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["Photo Saved!"].scrollViews.otherElements.buttons["Okay"].tap()
        */
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        //Changing Sol
        app.navigationBars["Sol 1"]/*@START_MENU_TOKEN@*/.buttons["PhotosCollectionViewController.NextSolButton"]/*[[".buttons[\">\"]",".buttons[\"PhotosCollectionViewController.NextSolButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.navigationBars["Sol 2"]/*@START_MENU_TOKEN@*/.buttons["PhotosCollectionViewController.PreviousSolButton"]/*[[".buttons[\"<\"]",".buttons[\"PhotosCollectionViewController.PreviousSolButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        //Swiping
        let verticalScrollBar3PagesCollectionView = app/*@START_MENU_TOKEN@*/.collectionViews.containing(.other, identifier:"Vertical scroll bar, 3 pages").element/*[[".collectionViews.containing(.other, identifier:\"Horizontal scroll bar, 1 page\").element",".collectionViews.containing(.other, identifier:\"Vertical scroll bar, 3 pages\").element"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        verticalScrollBar3PagesCollectionView.swipeUp()
        verticalScrollBar3PagesCollectionView.swipeDown()
        
        //Saving Picture
        app.collectionViews.children(matching: .cell).element(boundBy: 1).children(matching: .other).element.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Save to Photo Library"]/*[[".buttons[\"Save to Photo Library\"].staticTexts[\"Save to Photo Library\"]",".buttons[\"PhotoDetailViewController.SaveButton\"].staticTexts[\"Save to Photo Library\"]",".staticTexts[\"Save to Photo Library\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.alerts["Photo Saved!"].scrollViews.otherElements.buttons["Okay"].tap()
        
        //Tapping Back Button
        XCUIApplication().navigationBars["Title"].buttons["Sol 1"].tap()
        
    }
    

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}

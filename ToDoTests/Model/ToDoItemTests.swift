//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Surapong.suw on 28/6/2561 BE.
//  Copyright © 2561 surapongs. All rights reserved.
//

import XCTest
@testable import ToDo

class ToDoItemTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_Init_WhenGivenTitle_SetsTitle() {
        // Given
        
        // When
        let item = ToDoItem(title: "Foo")
        
        // Then
        XCTAssertEqual(item.title, "Foo", "should set title")
    }
    
    func test_Init_WhenGivenDescription_SetsDescription() {
        // Given
        
        // When
        let item = ToDoItem(title: "", itemDescription: "Bar")
        
        // Then
        XCTAssertEqual(item.itemDescription, "Bar", "should set itemDescription")
    }
    
    func test_Init_WhenGivenTimestamp_SetsTimestamp() {
        // Given
        
        // When
        let item = ToDoItem(title: "", timestamp: 0.0)
        
        // Then
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
        // Given
        
        // When
        let location = Location(name: "Foo")
        let item = ToDoItem(title: "", location: location)
        
        // Then
        XCTAssertEqual(item.location?.name, location.name, "should set location")
        
    }
    
    func text_EqualItems_AreEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Foo")
        
        XCTAssertEqual(first, second)
    }
    
    func test_Items_WhenLocationDiffers_AreNotEqual() {
        let first = ToDoItem(title: "", location: Location(name: "Foo"))
        let second = ToDoItem(title: "", location: Location(name: "Bar"))
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenOneLocationIsNilAndTheOtherIsnt_AreNotEqual() {
        let first = ToDoItem(title: "", location: Location(name: "Foo"))
        let second = ToDoItem(title: "", location: nil)
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTimestampsDiffer_AreNotEqaul() {
        let first = ToDoItem(title: "Foo", timestamp: 1.0)
        let second = ToDoItem(title: "Foo", timestamp: 0.0)
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenDescriptionsDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo", itemDescription: "Bar")
        let second = ToDoItem(title: "Foo", itemDescription: "Baz")
        
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTitlesDiffer_AreNotEqual() {
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Bar")
        
        XCTAssertNotEqual(first, second)
    }
}

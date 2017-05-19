//: Playground - noun: a place where people can play

import UIKit
import XCTest

class Lotus {
    
    func numberOfVowels(in string: String) -> Int {
        
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var numberOfVowels = 0
        
        for character in string.characters {
            if vowels.contains(character) {
                numberOfVowels += 1
            }
        }
        
        return numberOfVowels
    }
    
    func makeHeadline(from string: String) -> String {
        
        let words = string.components(separatedBy: " ")
        var headline = ""
        
        for var word in words {
            let firstCharacter = word.remove(at: word.startIndex)
            headline += "\(String(firstCharacter).uppercased())\(word) "
        }
        
        headline.remove(at: headline.index(before: headline.endIndex))
        
        return headline
    }
}

class LotusTest: XCTestCase {
    
    var lotus: Lotus!
    
    override func setUp() {
        super.setUp()
        lotus = Lotus()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLotus() {
        XCTAssertNotNil(Lotus())
    }
    
    func testNumberOfVowelsRed() {
        let string = "NguyenAnTinh"
        let numberOfVowels = lotus.numberOfVowels(in: string)
        XCTAssertEqual(numberOfVowels, 6, "Should find 4 vowels in NguyenAnTinh")
    }
    
    func testNumberOfVowelsGreen() {
        let string = "NguyenAnTinh"
        let numberOfVowels = lotus.numberOfVowels(in: string)
        XCTAssertEqual(numberOfVowels, 4, "Should find 4 vowels in NguyenAnTinh")
    }
    
    func testHeadlineWithEachWordStartCapitalGreen() {
        let input = "this is my name Nguyen An Tinh"
        let expectedOutput = "This Is My Name Nguyen An Tinh"
        let headline = lotus.makeHeadline(from: input)
        XCTAssertEqual(headline, expectedOutput)
    }
    
}

LotusTest.defaultTestSuite().run()

import Cocoa
import XCTest

var greeting = "Hello, playground"

protocol Iterator {
    func getNext() -> Int?
    func hasNext() -> Bool
}

class CollectionIterator : Iterator {
    private var items : [Int]
    private var index = 0
    
    init(_ items: [Int]) {
        self.items = items
    }
    
    func getNext() -> Int? {
        guard hasNext() else { return nil }
        var item = items[index]
        index += 1
        return item
    }
    
    func hasNext() -> Bool {
        return index < items.count
    }
}

class CollectionIteratorTest : XCTestCase {
    
    func testIterator() {
       
        let collection = CollectionIterator([1, 2, 3])
        XCTAssertTrue(collection.hasNext())
        XCTAssertEqual(1, collection.getNext()!)
        XCTAssertTrue(collection.hasNext())
        XCTAssertEqual(2, collection.getNext()!)
        XCTAssertTrue(collection.hasNext())
        XCTAssertEqual(3, collection.getNext()!)
        XCTAssertFalse(collection.hasNext())
        XCTAssertNil(collection.getNext())
        
    }
}


import Algorithms
import TupleViews
import XCTest

final class TupleViewsTests: XCTestCase {
    private let array = Array(0..<60)
    
    func testCoupleView() {
        XCTAssert(CoupleView(array).elementsEqual(array.chunks(ofCount: 2), by: {
            $0.0 == $1.dropFirst(0).first &&
            $0.1 == $1.dropFirst(1).first
        }))
    }
    
    func testTripleView() {
        XCTAssert(TripleView(array).elementsEqual(array.chunks(ofCount: 3), by: {
            $0.0 == $1.dropFirst(0).first &&
            $0.1 == $1.dropFirst(1).first &&
            $0.2 == $1.dropFirst(2).first
        }))
    }
    
    func testQuadrupleView() {
        XCTAssert(QuadrupleView(array).elementsEqual(array.chunks(ofCount: 4), by: {
            $0.0 == $1.dropFirst(0).first &&
            $0.1 == $1.dropFirst(1).first &&
            $0.2 == $1.dropFirst(2).first &&
            $0.3 == $1.dropFirst(3).first
        }))
    }
    
    func testQuintupleView() {
        XCTAssert(QuintupleView(array).elementsEqual(array.chunks(ofCount: 5), by: {
            $0.0 == $1.dropFirst(0).first &&
            $0.1 == $1.dropFirst(1).first &&
            $0.2 == $1.dropFirst(2).first &&
            $0.3 == $1.dropFirst(3).first &&
            $0.4 == $1.dropFirst(4).first
        }))
    }
    
    func testSextupleView() {
        XCTAssert(SextupleView(array).elementsEqual(array.chunks(ofCount: 6), by: {
            $0.0 == $1.dropFirst(0).first &&
            $0.1 == $1.dropFirst(1).first &&
            $0.2 == $1.dropFirst(2).first &&
            $0.3 == $1.dropFirst(3).first &&
            $0.4 == $1.dropFirst(4).first &&
            $0.5 == $1.dropFirst(5).first
        }))
    }
}

//
//  ProtobufEqualityTest.swift
//  ProtobufEqualityTest
//
//  Created by Mattijs on 01/05/15.
//
//

import XCTest

class RegularPoint: Equatable {
    var latitude:Float = Float(0)
    var longitude:Float = Float(0)
}


func == (lhs: RegularPoint, rhs: RegularPoint) -> Bool {
    return lhs.latitude == rhs.latitude &&
        lhs.longitude == rhs.longitude
}

class RegularPointEqualityTest: XCTestCase {
    func testRegularPoint() {
        var point1 = RegularPoint()
        point1.latitude = 1.0
        point1.longitude = 1.0
        
        var point2 = RegularPoint()
        point2.latitude = 2.0
        point2.longitude = 2.0
        
        // works fine, calls the == function and takes the inverse implicitly (put break point to check)
        XCTAssert(point1 != point2, "")
    }
}

class ProtoPointEqualityTest: XCTestCase {
    
    func testProtoPointWorks() {
        var point1 = ProtoPoint.builder().setLatitude(1.0).setLongitude(1.0).build()
        var point2 = ProtoPoint.builder().setLatitude(2.0).setLongitude(2.0).build()
        
        XCTAssert(point1.latitude == 1.0, "")
        XCTAssert(point2.latitude == 2.0, "")
        
        // Succeeds, calls the == function from ProtoPoint.pb.swift as expected
        XCTAssert(!(point1 == point2), "")
    }
    
    func testProtoPointShouldWork() {
        var point1 = ProtoPoint.builder().setLatitude(1.0).setLongitude(1.0).build()
        var point2 = ProtoPoint.builder().setLatitude(2.0).setLongitude(2.0).build()
        
        XCTAssert(point1.latitude == 1.0, "")
        XCTAssert(point2.latitude == 2.0, "")
        
        // Fails, should call the == function from ProtoPoint.pb.swift and take the inverse just like the testRegularPoint() does. But that doesn't happen.
        XCTAssert(point1 != point2, "")
    }
}


// implementing != below explicitly makes it works, but should not be needed
//
//internal func != (lhs: ProtoPoint, rhs: ProtoPoint) -> Bool {
//    return !(lhs == rhs)
//}
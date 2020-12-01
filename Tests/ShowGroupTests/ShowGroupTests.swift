import XCTest
@testable import ShowGroup
@testable import WavyShows

final class ShowGroupTests: XCTestCase {
    static var allTests = [
        ("testReadGroupShows", testReadGroupShows),
    ]
    
}

extension ShowGroupTests {
    func testReadGroupShows() {
        let show = "OH YEAH".as(AnyShow.self)
        let group = AnyShowGroup(show: show)
        XCTAssertGreaterThanOrEqual(group[\.shows].count, 1, "")
    }
    
}

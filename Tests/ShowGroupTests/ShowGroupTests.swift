import XCTest
@testable import ShowGroup
@testable import WavyShows

final class ShowGroupTests: XCTestCase {
    static var allTests = [
        ("testReadGroupShows", testReadGroupShows),
        ("testAutomaticNetworkForGroupElements", testAutomaticNetworkForGroupElements),
    ]
    
}

extension ShowGroupTests {
    func testReadGroupShows() {
        let show = "OH YEAH".as(AnyShow.self)
        let group = AnyShowGroup(show: show)
        XCTAssertGreaterThanOrEqual(group[\.shows].count, 1, "")
    }
    
    func testAutomaticNetworkForGroupElements() {
        let group = NPR()
        let shows = group[\.contents.shows]
        
        shows.forEach { show in
            XCTAssertEqual(show.properties.network, Network.npr)
            
        }
    }
    
}

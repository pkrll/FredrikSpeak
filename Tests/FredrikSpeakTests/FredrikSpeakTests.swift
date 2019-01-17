import XCTest
@testable import FredrikSpeak

final class FredrikSpeakTests: XCTestCase {

	func testExample() {
		// This is an example of a functional test case.
		// Use XCTAssert and related functions to verify your tests produce the correct
		// results.
		XCTAssertEqual(FredrikSpeak().text, "Hello, World!")
	}

	static var allTests = [
		("testExample", testExample)
	]
}

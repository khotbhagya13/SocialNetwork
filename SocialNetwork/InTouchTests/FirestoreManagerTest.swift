//
//  FirestoreManagerTest.swift
//  InTouchTests
//
//  Created by BK on 2024/06/19.
//

@testable import InTouch
import XCTest

final class FirestoreManagerTest: XCTestCase {
    var sut: FirestoreManager!

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testGetDocument() {
        sut = FirestoreManager.shared

        let expectation = expectation(description: "Get document request")

        sut.getDocument(
            asType: User.self,
            documentId: "r1ddx09@gmail.com",
            reference: sut.getRef(.users, groupId: nil)
        ) { result in
            let isSuccess: Bool

            switch result {
            case let .success(user):
                isSuccess = true

            case .failure:
                isSuccess = false
            }
            XCTAssertEqual(isSuccess, true)

            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 3)
    }
}

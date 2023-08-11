import XCTest
@testable import XMLParserSwift

final class XMLParserSwiftTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.

        let exampleXML = """
            <bookstore><book category="fiction"><title lang="en">Harry Potter</title>
                <author>J.K. Rowling</author>
                <price>29.99</price>
              </book>
              <book category="fiction">
                <title lang="en">The Hobbit</title>
                <author>J.R.R. Tolkien</author>
                <price>19.99</price>
              </book>
              <book category="non-fiction">
                <title lang="en">Sapiens: A Brief History of Humankind</title>
                <author>Yuval Noah Harari</author>
                <price>24.99</price>
              </book>
            </bookstore>
            """
        guard let data = exampleXML.data(using: .utf8) else {
            XCTFail("Failed to convert XML string to data.")
            return
        }

        let prettyXML = XMLParserSwift.prettyPrint(data: data)
        XCTAssertNotNil(prettyXML)
        XCTAssertEqual(prettyXML, """
        <bookstore>
          <book category="fiction">
            <title lang="en">Harry Potter</title>
            <author>J.K. Rowling</author>
            <price>29.99</price>
          </book>
          <book category="fiction">
            <title lang="en">The Hobbit</title>
            <author>J.R.R. Tolkien</author>
            <price>19.99</price>
          </book>
          <book category="non-fiction">
            <title lang="en">Sapiens: A Brief History of Humankind</title>
            <author>Yuval Noah Harari</author>
            <price>24.99</price>
          </book>
        </bookstore>
        """)
    }
}

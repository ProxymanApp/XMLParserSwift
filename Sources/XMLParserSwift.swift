import Foundation
import GDataXMLNode

public struct XMLParserSwift {
    public private(set) var text = "Hello, World!"

    public init() {
    }

    static func prettyPrint(data: Data) -> String? {
        guard let prettyXML = GDataXMLDocument.prettyPrintXMLData(data) else {
            return nil
        }

        return prettyXML
    }
}

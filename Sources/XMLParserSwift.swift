import Foundation
import GDataXMLNode

public struct XMLParserSwift {
    public static func prettyPrint(data: Data) -> String? {
        guard let prettyXML = GDataXMLDocument.prettyPrintXMLData(data) else {
            return nil
        }

        return prettyXML
    }
}

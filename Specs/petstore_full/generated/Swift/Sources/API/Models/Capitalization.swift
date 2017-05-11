//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

public class Capitalization: JSONDecodable, JSONEncodable, PrettyPrintable {

    /** Name of the pet
 */
    public var attname: String?

    public var capitalCamel: String?

    public var capitalSnake: String?

    public var sCAETHFlowPoints: String?

    public var smallCamel: String?

    public var smallSnake: String?

    public init(attname: String? = nil, capitalCamel: String? = nil, capitalSnake: String? = nil, sCAETHFlowPoints: String? = nil, smallCamel: String? = nil, smallSnake: String? = nil) {
        self.attname = attname
        self.capitalCamel = capitalCamel
        self.capitalSnake = capitalSnake
        self.sCAETHFlowPoints = sCAETHFlowPoints
        self.smallCamel = smallCamel
        self.smallSnake = smallSnake
    }

    public required init(jsonDictionary: JSONDictionary) throws {
        attname = jsonDictionary.json(atKeyPath: "ATT_NAME")
        capitalCamel = jsonDictionary.json(atKeyPath: "CapitalCamel")
        capitalSnake = jsonDictionary.json(atKeyPath: "Capital_Snake")
        sCAETHFlowPoints = jsonDictionary.json(atKeyPath: "SCA_ETH_Flow_Points")
        smallCamel = jsonDictionary.json(atKeyPath: "smallCamel")
        smallSnake = jsonDictionary.json(atKeyPath: "small_Snake")
    }

    public func encode() -> JSONDictionary {
        var dictionary: JSONDictionary = [:]
        if let attname = attname {
            dictionary["ATT_NAME"] = attname
        }
        if let capitalCamel = capitalCamel {
            dictionary["CapitalCamel"] = capitalCamel
        }
        if let capitalSnake = capitalSnake {
            dictionary["Capital_Snake"] = capitalSnake
        }
        if let sCAETHFlowPoints = sCAETHFlowPoints {
            dictionary["SCA_ETH_Flow_Points"] = sCAETHFlowPoints
        }
        if let smallCamel = smallCamel {
            dictionary["smallCamel"] = smallCamel
        }
        if let smallSnake = smallSnake {
            dictionary["small_Snake"] = smallSnake
        }
        return dictionary
    }

    /// pretty prints all properties including nested models
    public var prettyPrinted: String {
        return "\(type(of: self)):\n\(encode().recursivePrint(indentIndex: 1))"
    }
}

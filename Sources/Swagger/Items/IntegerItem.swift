import JSONUtilities

public struct IntegerItem {
    public let format: IntegerFormat?
    public let minimum: Int?
    public let maximum: Int?
    public let exclusiveMinimum: Int?
    public let exclusiveMaximum: Int?
    public let multipleOf: Int?
}

extension IntegerItem: JSONObjectConvertible {

    public init(jsonDictionary: JSONDictionary) throws {
        format = jsonDictionary.json(atKeyPath: "format")

        minimum = jsonDictionary.json(atKeyPath: "minimum")
        maximum = jsonDictionary.json(atKeyPath: "maximum")
        exclusiveMinimum = jsonDictionary.json(atKeyPath: "exclusiveMinimum")
        exclusiveMaximum = jsonDictionary.json(atKeyPath: "exclusiveMaximum")
        multipleOf = jsonDictionary.json(atKeyPath: "multipleOf")
    }
}

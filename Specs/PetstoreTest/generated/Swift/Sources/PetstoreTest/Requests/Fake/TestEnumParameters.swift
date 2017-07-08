//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension PetstoreTest.Fake {

    /** To test enum parameters */
    public enum TestEnumParameters {

      public static let service = APIService<Response>(id: "testEnumParameters", tag: "fake", method: "GET", path: "/fake", hasBody: true)

      /** Form parameter enum test (string array) */
      public enum EnumFormStringArray: String {
          case greaterThan = ">"
          case dollar = "$"

          public static let cases: [EnumFormStringArray] = [
            .greaterThan,
            .dollar,
          ]
      }

      /** Form parameter enum test (string) */
      public enum EnumFormString: String {
          case abc = "_abc"
          case efg = "-efg"
          case xyz = "(xyz)"

          public static let cases: [EnumFormString] = [
            .abc,
            .efg,
            .xyz,
          ]
      }

      /** Header parameter enum test (string array) */
      public enum EnumHeaderStringArray: String {
          case greaterThan = ">"
          case dollar = "$"

          public static let cases: [EnumHeaderStringArray] = [
            .greaterThan,
            .dollar,
          ]
      }

      /** Header parameter enum test (string) */
      public enum EnumHeaderString: String {
          case abc = "_abc"
          case efg = "-efg"
          case xyz = "(xyz)"

          public static let cases: [EnumHeaderString] = [
            .abc,
            .efg,
            .xyz,
          ]
      }

      /** Query parameter enum test (string array) */
      public enum EnumQueryStringArray: String {
          case greaterThan = ">"
          case dollar = "$"

          public static let cases: [EnumQueryStringArray] = [
            .greaterThan,
            .dollar,
          ]
      }

      /** Query parameter enum test (string) */
      public enum EnumQueryString: String {
          case abc = "_abc"
          case efg = "-efg"
          case xyz = "(xyz)"

          public static let cases: [EnumQueryString] = [
            .abc,
            .efg,
            .xyz,
          ]
      }

      public class Request: APIRequest<Response> {

          public struct Options {

              /** Form parameter enum test (string array) */
              public var enumFormStringArray: [EnumFormStringArray]?

              /** Form parameter enum test (string) */
              public var enumFormString: EnumFormString?

              /** Header parameter enum test (string array) */
              public var enumHeaderStringArray: [EnumHeaderStringArray]?

              /** Header parameter enum test (string) */
              public var enumHeaderString: EnumHeaderString?

              /** Query parameter enum test (string array) */
              public var enumQueryStringArray: [EnumQueryStringArray]?

              /** Query parameter enum test (string) */
              public var enumQueryString: EnumQueryString?

              /** Query parameter enum test (double) */
              public var enumQueryInteger: EnumQueryInteger?

              /** Query parameter enum test (double) */
              public var enumQueryDouble: EnumQueryDouble?

              public init(enumFormStringArray: [EnumFormStringArray]? = nil, enumFormString: EnumFormString? = nil, enumHeaderStringArray: [EnumHeaderStringArray]? = nil, enumHeaderString: EnumHeaderString? = nil, enumQueryStringArray: [EnumQueryStringArray]? = nil, enumQueryString: EnumQueryString? = nil, enumQueryInteger: EnumQueryInteger? = nil, enumQueryDouble: EnumQueryDouble? = nil) {
                  self.enumFormStringArray = enumFormStringArray
                  self.enumFormString = enumFormString
                  self.enumHeaderStringArray = enumHeaderStringArray
                  self.enumHeaderString = enumHeaderString
                  self.enumQueryStringArray = enumQueryStringArray
                  self.enumQueryString = enumQueryString
                  self.enumQueryInteger = enumQueryInteger
                  self.enumQueryDouble = enumQueryDouble
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: TestEnumParameters.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(enumFormStringArray: [EnumFormStringArray]? = nil, enumFormString: EnumFormString? = nil, enumHeaderStringArray: [EnumHeaderStringArray]? = nil, enumHeaderString: EnumHeaderString? = nil, enumQueryStringArray: [EnumQueryStringArray]? = nil, enumQueryString: EnumQueryString? = nil, enumQueryInteger: EnumQueryInteger? = nil, enumQueryDouble: EnumQueryDouble? = nil) {
              let options = Options(enumFormStringArray: enumFormStringArray, enumFormString: enumFormString, enumHeaderStringArray: enumHeaderStringArray, enumHeaderString: enumHeaderString, enumQueryStringArray: enumQueryStringArray, enumQueryString: enumQueryString, enumQueryInteger: enumQueryInteger, enumQueryDouble: enumQueryDouble)
              self.init(options: options)
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              if let enumFormStringArray = options.enumFormStringArray?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                params["enum_form_string_array"] = enumFormStringArray
              }
              if let enumFormString = options.enumFormString?.encode() {
                params["enum_form_string"] = enumFormString
              }
              if let enumQueryStringArray = options.enumQueryStringArray?.encode().map({ String(describing: $0) }).joined(separator: ",") {
                params["enum_query_string_array"] = enumQueryStringArray
              }
              if let enumQueryString = options.enumQueryString?.encode() {
                params["enum_query_string"] = enumQueryString
              }
              if let enumQueryInteger = options.enumQueryInteger?.encode() {
                params["enum_query_integer"] = enumQueryInteger
              }
              if let enumQueryDouble = options.enumQueryDouble?.encode() {
                params["enum_query_double"] = enumQueryDouble
              }
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Invalid request */
            case failure400

            /** Not found */
            case failure404

            public var success: Void? {
                switch self {
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
              switch self {
              case .failure400: return 400
              case .failure404: return 404
              }
            }

            public var successful: Bool {
              switch self {
              case .failure400: return false
              case .failure404: return false
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 400: self = .failure400
                case 404: self = .failure404
                default: throw APIError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}

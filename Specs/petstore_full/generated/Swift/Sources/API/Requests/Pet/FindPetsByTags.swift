//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.Pet {

    /** Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3 for testing. */
    public enum FindPetsByTags {

      public static let service = APIService<Response>(id: "findPetsByTags", tag: "pet", method: "GET", path: "/pet/findByTags", hasBody: false, authorization: Authorization(type: "petstore_auth", scope: "write:pets"))

      public class Request: APIRequest<Response> {

          public struct Options {

              /** Tags to filter by */
              public var tags: [String]

              public init(tags: [String]) {
                  self.tags = tags
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: FindPetsByTags.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(tags: [String]) {
              let options = Options(tags: tags)
              self.init(options: options)
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              params["tags"] = options.tags.joined(separator: ",")
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = [Pet]

            /** successful operation */
            case success200([Pet])

            /** Invalid tag value */
            case failure400

            public var success: [Pet]? {
                switch self {
                case .success200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .success200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
              switch self {
              case .success200: return 200
              case .failure400: return 400
              }
            }

            public var successful: Bool {
              switch self {
              case .success200: return true
              case .failure400: return false
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .success200(JSONDecoder.decode(data: data))
                case 400: self = .failure400
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

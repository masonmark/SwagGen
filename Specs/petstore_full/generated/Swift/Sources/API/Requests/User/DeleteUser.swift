//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension API.User {

    /** This can only be done by the logged in user. */
    public enum DeleteUser {

      public static let service = APIService<Response>(id: "deleteUser", tag: "user", method: "DELETE", path: "/user/{username}", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** The name that needs to be deleted */
              public var username: String

              public init(username: String) {
                  self.username = username
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: DeleteUser.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(username: String) {
              let options = Options(username: username)
              self.init(options: options)
          }

          public override var path: String {
              return super.path.replacingOccurrences(of: "{" + "username" + "}", with: "\(self.options.username)")
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Invalid username supplied */
            case failure400

            /** User not found */
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

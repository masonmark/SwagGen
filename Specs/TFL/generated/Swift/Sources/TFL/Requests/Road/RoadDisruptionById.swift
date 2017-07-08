//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation
import JSONUtilities

extension TFL.Road {

    public enum RoadDisruptionById {

      public static let service = APIService<Response>(id: "Road_DisruptionById", tag: "Road", method: "GET", path: "/Road/all/Disruption/{disruptionIds}", hasBody: false)

      public class Request: APIRequest<Response> {

          public struct Options {

              /** Comma-separated list of disruption identifiers to filter by. */
              public var disruptionIds: [String]

              /** Optional, defaults to false. When true, removes every property/node except for id, point, severity, severityDescription, startDate, endDate, corridor details, location and comments. */
              public var stripContent: Bool?

              public init(disruptionIds: [String], stripContent: Bool? = nil) {
                  self.disruptionIds = disruptionIds
                  self.stripContent = stripContent
              }
          }

          public var options: Options

          public init(options: Options) {
              self.options = options
              super.init(service: RoadDisruptionById.service)
          }

          /// convenience initialiser so an Option doesn't have to be created
          public convenience init(disruptionIds: [String], stripContent: Bool? = nil) {
              let options = Options(disruptionIds: disruptionIds, stripContent: stripContent)
              self.init(options: options)
          }

          public override var path: String {
              return super.path.replacingOccurrences(of: "{" + "disruptionIds" + "}", with: "\(self.options.disruptionIds.joined(separator: ","))")
          }

          public override var parameters: [String: Any] {
              var params: JSONDictionary = [:]
              if let stripContent = options.stripContent {
                params["stripContent"] = stripContent
              }
              return params
          }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = RoadDisruption

            /** OK */
            case success200(RoadDisruption)

            public var success: RoadDisruption? {
                switch self {
                case .success200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .success200(let response): return response
                }
            }

            public var statusCode: Int {
              switch self {
              case .success200: return 200
              }
            }

            public var successful: Bool {
              switch self {
              case .success200: return true
              }
            }

            public init(statusCode: Int, data: Data) throws {
                switch statusCode {
                case 200: self = try .success200(JSONDecoder.decode(data: data))
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

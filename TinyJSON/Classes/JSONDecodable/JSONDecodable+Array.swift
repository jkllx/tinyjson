//
//  JSONDecodable+Array.swift
//
//
//  Created by Nero on 10/19/21.
//

import Foundation

extension Array: JSONDecodable where Element: JSONDecodable {

  public static func decode(from json: JSON) throws -> [Element] {
    guard let array = json.array else {
      throw JSONDecodingError.dataCorrupted("JSON is not an array")
    }
    return try array.map { try Element.decode(from: $0) }
  }
}

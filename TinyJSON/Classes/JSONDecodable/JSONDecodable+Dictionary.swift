//
//  JSONDecodable+Dictionary.swift
//
//
//  Created by Nero on 10/19/21.
//

import Foundation

extension Dictionary: JSONDecodable where Key == String, Value: JSONDecodable {

  public static func decode(from json: JSON) throws -> [String: Value] {
    guard let dictionary = json.dictionary else {
      throw JSONDecodingError.dataCorrupted("JSON is not an dictionary")
    }
    return try dictionary.mapValues { try Value.decode(from: $0) }
  }
}

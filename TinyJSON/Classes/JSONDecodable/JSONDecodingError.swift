//
//  JSONDecodingError.swift
//
//
//  Created by Nero on 10/19/21.
//

import Foundation

// MARK: - JSONDecodingError

public enum JSONDecodingError: LocalizedError {

  case keyNotFound(String)

  case dataCorrupted(String)

  public var errorDescription: String? {
    "JSON decoding error"
  }

  public var failureReason: String? {
    switch self {
    case .keyNotFound(let key):
      return "Key <\(key)> not found in JSON object"
    case .dataCorrupted(let message):
      return "Data is corrupted: <\(message)>"
    }
  }
}

extension JSONDecodingError {

  /// Check then unwrap the JSON object if it's a dictionary else throw error
  @discardableResult
  public static func throwIfNotDictionary(json: JSON) throws -> [String: JSON] {
    switch json {
    case .dictionary(let value):
      return value
    default:
      throw JSONDecodingError.dataCorrupted("JSON is not a dictionary")
    }
  }
}

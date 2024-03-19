//
//  JSONDecodable.swift
//
//
//  Created by Nero on 10/19/21.
//

import Foundation

// MARK: - JSONDecodable

public protocol JSONDecodable {

  static func decode(from json: JSON) throws -> Self
}

// MARK: - JSON + JSONDecodable

extension JSON: JSONDecodable {

  public static func decode(from json: JSON) throws -> JSON { json }
}

extension JSONDecodable {

  public static func tryDecode(from json: JSON) -> Self? {
    try? decode(from: json)
  }
}

//
//  Extensions+Decodable.swift
//  NTVK
//
//  Created by Nikita Teslyuk on 15/02/2019.
//  Copyright © 2019 Tesnik. All rights reserved.
//

import Foundation

extension Decodable {
  init(from: Any) throws {
    let data = try JSONSerialization.data(withJSONObject: from, options: .prettyPrinted)
    let decoder = JSONDecoder()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:sszzz"
    decoder.dateDecodingStrategy = .formatted(dateFormatter)
    self = try decoder.decode(Self.self, from: data)
  }
}

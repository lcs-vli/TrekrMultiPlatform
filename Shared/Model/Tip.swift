//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Li, Muchen on 2021/1/25.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}

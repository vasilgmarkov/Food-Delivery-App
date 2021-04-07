//
//  String+Extention.swift
//  Yummie
//
//  Created by vas mar on 06/04/2021.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}

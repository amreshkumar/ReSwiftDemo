//
//  Image.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation

public struct Image: Equatable {
    let url: String

    public static func == (lhs: Image, rhs: Image) -> Bool {
        guard lhs.url == rhs.url else { return false }
        return true
    }
}

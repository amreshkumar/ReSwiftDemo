//
//  Middlewares.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import ReSwift

let loggingMiddleware: Middleware<Any> = { dispatch, state in
    return { next in
        return { action in
            print("> \(action)")
            NSLog("> \(action)")

            return next(action)
        }
    }
}

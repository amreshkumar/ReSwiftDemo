//
//  AppState.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import ReSwift

struct AppState: StateType {
    let imagesGalleryState: ImagesGalleryState
}

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState (
        imagesGalleryState: ImagesGalleryState.reducer(state: state?.imagesGalleryState,
                                                       action: action)
    )
}

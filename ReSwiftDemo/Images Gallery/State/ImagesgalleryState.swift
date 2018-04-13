//
//  ImagesgalleryState.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import ReSwift

struct ImagesGalleryState: StateType, Equatable {
    let loadImages: Bool
    let images: [Image]

    static func create(loadImages: Bool = false, images: [Image] = []) -> ImagesGalleryState {
        return ImagesGalleryState(loadImages: loadImages, images: images)
    }

    static func reducer(state: ImagesGalleryState?, action: Action) -> ImagesGalleryState {
        let previousState = state ?? ImagesGalleryState.create()
        switch action {

        case ImagesGalleryActions.imagesLoaded(let images):
            return ImagesGalleryState(loadImages: true, images: images)

        default:
            return previousState
        }
    }

    public static func == (lhs: ImagesGalleryState, rhs: ImagesGalleryState) -> Bool {
        guard lhs.loadImages == rhs.loadImages else { return false }
        guard lhs.images == rhs.images else { return false }
        return true
    }
}

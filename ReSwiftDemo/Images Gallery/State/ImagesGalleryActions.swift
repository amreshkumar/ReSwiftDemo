//
//  ImagesGalleryActions.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import ReSwift

public enum ImagesGalleryActions: Action {
    case imagesLoaded(images: [Image])

    public static func loadData() {
        let images = ImageRepository().getAll()
        store.dispatch(ImagesGalleryActions.imagesLoaded(images: images))
    }
}

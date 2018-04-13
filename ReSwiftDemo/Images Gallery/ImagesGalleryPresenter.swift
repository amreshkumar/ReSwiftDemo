//
//  ImagesGalleryPresenter.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import ReSwift

class ImagesGalleryPresenter: StoreSubscriber {

    weak var delegate: ImagesGalleryProtocol?

    init(delegate: ImagesGalleryProtocol) {
        self.delegate = delegate

        store.subscribe(self) { $0.select { $0.imagesGalleryState }.skipRepeats { $0 == $1 }}
    }

    func fetchData() {
        ImagesGalleryActions.loadData()
    }

    func newState(state: ImagesGalleryState) {

        if state.loadImages {
            delegate?.loadImages(images: state.images)
        }
    }

}

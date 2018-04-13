//
//  ImagesGalleryDataSource.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import UIKit

class ImagesGalleryDataSource: NSObject, UICollectionViewDataSource {

    let images: [Image]

    init(images: [Image]) {
        self.images = images
        super.init()
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCell", for: indexPath)

        if let cell = cell as? ImageCell {
            cell.show(image: images[indexPath.item])
        }

        return cell
    }


}

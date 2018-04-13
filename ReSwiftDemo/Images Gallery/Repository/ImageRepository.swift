//
//  ImageRepository.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import Foundation
import UIKit

class ImageRepository {

    private let imagesToShow = ["chicken",
                                "corn",
                                "non-veg-salad",
                                "pasta",
                                "salad",
                                "wrap"]
    
    func getAll() -> [Image] {
        return imagesToShow.map { Image(url: $0) }
    }

}

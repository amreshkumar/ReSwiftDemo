//
//  ViewController.swift
//  ReSwiftDemo
//
//  Created by Amresh on 4/14/18.
//  Copyright © 2018 Amresh Kumar. All rights reserved.
//

import UIKit

protocol ImagesGalleryProtocol: class {
    func loadImages(images: [Image])
}

class ViewController: UIViewController, ImagesGalleryProtocol {

    @IBOutlet weak var collectionView: UICollectionView!

    var presenter: ImagesGalleryPresenter?

    private var imagesDataSource: ImagesGalleryDataSource? {
        didSet {
            collectionView.dataSource = imagesDataSource
        }
    }

    private var imagesDelegate: ImagesGalleryDelegate? {
        didSet {
            collectionView.delegate = imagesDelegate
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = ImagesGalleryPresenter(delegate: self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presenter?.fetchData()
    }

    func loadImages(images: [Image]) {
        self.imagesDataSource = ImagesGalleryDataSource(images: images)
        self.imagesDelegate = ImagesGalleryDelegate()
        collectionView.reloadData()
    }
}


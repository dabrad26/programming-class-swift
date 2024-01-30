//
//  ViewController.swift
//  SpacePhoto
//
//  Created by David Bradshaw on 1/29/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var copyrightLabel: UILabel!
    private let photoInfoController = PhotoInfoController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = ""
        descriptionLabel.text = ""
        copyrightLabel.text = ""
        imageView.image = UIImage(systemName: "photo.on.rectangle")
        
        Task {
            do {
                let photoInfo = try await photoInfoController.fetchPhotoInfo()
                self.title = photoInfo.title
                self.descriptionLabel.text = photoInfo.description
                self.copyrightLabel.text = photoInfo.copyright
                self.imageView.image = photoInfo.image
                self.descriptionLabel.sizeToFit()
            } catch {
                self.title = "Error Fetching Photo"
                self.imageView.image = UIImage(systemName: "exclamationmark.octagon")
                self.descriptionLabel.text = error.localizedDescription
                
                self.copyrightLabel.text = ""
            }
        }
    }


}


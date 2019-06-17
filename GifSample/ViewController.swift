//
//  ViewController.swift
//  GifSample
//
//  Created by 優樹永井 on 2019/06/08.
//  Copyright © 2019 com.nagai. All rights reserved.
//

import UIKit
import SwiftyGif

class ViewController: UIViewController ,SwiftyGifDelegate {
    
    @IBOutlet private weak var imageView: UIImageView!
    
    var gifName: String?
    let gifManager = SwiftyGifManager(memoryLimit: 60)
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageView.delegate = self
        if let image = try? UIImage(imageName: "gifImages.gif") {
            self.imageView.setImage(image, manager: gifManager)
        }
    }
    
//    func fetchGifFromURLString(_ string: String?) {
//        guard let string = string, let url = URL(string: string) else {
//            return
//        }
//        self.imageView.setGifFromURL(url, manager: gifManager, levelOfIntegrity: .highestNoFrameSkipping)
//    }
    
    
}

//extension ViewController : SwiftyGifDelegate {
//
//    func gifURLDidFinish(sender: UIImageView) {
//        print("gifURLDidFinish")
//    }
//
//    func gifURLDidFail(sender: UIImageView, url: URL, error: Error?) {
//        print("gifURLDidFail", url)
//
//        if let error = error {
//            print(error)
//        }
//    }
//
//    func gifDidStart(sender: UIImageView) {
//        print("gifDidStart")
//    }
//}

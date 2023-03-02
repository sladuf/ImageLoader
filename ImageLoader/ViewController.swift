//
//  ViewController.swift
//  ImageLoader
//
//  Created by 김민령 on 2023/03/02.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image1.image = UIImage(systemName: "photo")
        image2.image = UIImage(systemName: "photo")
        image3.image = UIImage(systemName: "photo")
        image4.image = UIImage(systemName: "photo")
        image5.image = UIImage(systemName: "photo")
    }
    
    @IBAction func load1(_ sender: UIButton) {
        getImage(imageView: image1)
    }
    @IBAction func load2(_ sender: UIButton) {
        getImage(imageView: image2)
    }
    @IBAction func load3(_ sender: UIButton) {
        getImage(imageView: image3)
    }
    @IBAction func load4(_ sender: UIButton) {
        getImage(imageView: image4)
    }
    @IBAction func load5(_ sender: UIButton) {
        getImage(imageView: image5)
    }

    @IBAction func loadAllImages(_ sender: UIButton) {
        let function = [load1(_:), load2(_:), load3(_:), load4(_:), load5(_:)]
        for f in function{
            f(sender)
        }
    }
    
}

extension ViewController {
    func getImage(imageView: UIImageView){
        imageView.image = UIImage(systemName: "photo")
        NetworkManager.getImage { data in
            imageView.image = UIImage(data: data)
        }
    }
}


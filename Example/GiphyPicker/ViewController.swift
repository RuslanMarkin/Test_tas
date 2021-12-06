//
//  ViewController.swift
//  ViewController
//
//  Created by Markin Ruslan on 03/12/2021.
//  Copyright (c) 2021 Markin Ruslan. All rights reserved.
//

import UIKit
import GiphyPicker

class ViewController: UIViewController {


    @IBOutlet weak var imageViewww: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openPicker() {
        let picker = GiphyPicker.getViewController()
        picker.onTapOnMedia = { [weak self] giphyInfo, image in
            DispatchQueue.main.async {
                self?.imageViewww.image = image
                picker.dismiss(animated: true, completion: nil)
            }
        }
        present(picker, animated: true, completion: nil)
    }

}


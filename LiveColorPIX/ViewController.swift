//
//  ViewController.swift
//  PIXTwitterTest
//
//  Created by Hexagons on 2020-04-22.
//  Copyright © 2020 Hexagons. All rights reserved.
//

import UIKit
import LiveValues
import RenderKit
import PixelKit

class ViewController: UIViewController {

    var colorPix: ColorPIX!
    
    var color: UIColor = .clear
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPix = ColorPIX(at: .fullscreen)
        colorPix.color = LiveColor({ self.color })
        colorPix.view.frame = view.bounds
        colorPix.pixView.liveTouch(active: false)
        view.addSubview(colorPix.view)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        color = UIColor(hue: .random(in: 0.0...1.0), saturation: 1.0, brightness: 1.0, alpha: 1.0)
    }

}


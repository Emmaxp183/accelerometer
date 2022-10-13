//
//  ViewController.swift
//  Accelerometer
//
//  Created by macbook on 13/10/2022.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zlabel: UILabel!
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels )
    }

    func updateLabels(data: CMAccelerometerData?, error: Error?){
        guard let accelerometerData = data else {return}
        print(accelerometerData)
    }
}


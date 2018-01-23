//
//  TrackingViewController.swift
//  Hotpot
//
//  Created by siqi yang on 20/1/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import UIKit


class TrackingViewController: UIViewController{

    @IBOutlet weak var connectButton: RoundButton!
    @IBOutlet weak var disconnectButton: RoundButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let id:String = "A1EA81F0-0E1B-D4A1-B840-63F88C8DA1EA"
        
        
//        // You can pass in nil if you want to discover all Peripherals
//        SwiftyBluetooth.scanForPeripherals(withServiceUUIDs: [id] , timeoutAfter: 15) { scanResult in
//            switch scanResult {
//            case .scanStarted:
//                print("scan Start")
//            // The scan started meaning CBCentralManager scanForPeripherals(...) was called
//            case .scanResult(let peripheral, let advertisementData, let RSSI):
//                // A peripheral was found, your closure may be called multiple time with a .ScanResult enum case.
//            // You can save that peripheral for future use, or call some of its functions directly in this closure.
//
//                print(advertisementData)
//                print(String(describing: RSSI))
//            case .scanStopped(let error):
//                print(error as Any)
//                // The scan stopped, an error is passed if the scan stopped unexpectedly
//            }
//        }
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


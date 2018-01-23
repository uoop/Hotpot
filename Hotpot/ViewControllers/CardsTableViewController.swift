//
//  CardsTableViewController.swift
//  Hotpot
//
//  Created by siqi yang on 20/1/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import UIKit
import KontaktSDK

class CardsTableViewController: UITableViewController {
    
//    var beaconManager: KTKBeaconManager!
//    var beacons:[CLBeacon]!
    
    

    

    override func viewDidLoad() {
        
        
        
//        super.viewDidLoad()
//
//        Kontakt.setAPIKey("EQZwkbzlDoKsXwsXeMdavfWIwcqGHehp")
//        beaconManager = KTKBeaconManager(delegate: self )
//
//
//        let myProximityUuid = UUID(uuidString: "A1EA81F0-0E1B-D4A1-B840-63F88C8DA1EA")
//        let region = KTKBeaconRegion(proximityUUID: myProximityUuid!, identifier: "Region1")
//        //beacons = nil
//
//
//
//        switch KTKBeaconManager.locationAuthorizationStatus() {
//        case .notDetermined:
//            beaconManager.requestLocationAlwaysAuthorization()
//        case .denied, .restricted:
//            print("Location service not allowed1")
//        // No access to Location Services
//        case .authorizedWhenInUse:
//            print("Location allowed1")
//            // For most iBeacon-based app this type of
//        // permission is not adequate
//        case .authorizedAlways:
//            print("Always Allowed location1")
//            if KTKBeaconManager.isMonitoringAvailable() {
//                beaconManager.startMonitoring(for: region)
//            }
//        }
//        switch KTKBeaconManager.locationAuthorizationStatus() {
//        case .notDetermined:
//            beaconManager.requestLocationAlwaysAuthorization()
//        case .denied, .restricted:
//            print("Location service not allowed2")
//        // No access to Location Services
//        case .authorizedWhenInUse:
//            print("Location allowed2")
//            // For most iBeacon-based app this type of
//        // permission is not adequate
//        case .authorizedAlways:
//            print("Always Allowed location2")
//            if KTKBeaconManager.isMonitoringAvailable() {
//                beaconManager.startMonitoring(for: region)
//                beaconManager(beaconManager, didEnter: region)
//                print("did enter outside")
//                print("searching for beacons")
//                if beacons != nil {
//                    beaconManager(beaconManager, didRangeBeacons: beacons, in: region)
//                }else{
//                    print("cant find any devices")
//
//
//
//                }
//
//
//
//
//                beaconManager(beaconManager, didExitRegion: region)
//                print("did Exist outside")
//            }
//        }
        
        
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewwillapper")
    }
    
    
//    func beaconManager(_ manager: KTKBeaconManager, didEnter region: KTKBeaconRegion) {
//        print("did enter inside")
//        manager.startRangingBeacons(in: region)
//    }
//
//    func beaconManager(_ manager: KTKBeaconManager, didExitRegion region: KTKBeaconRegion) {
//        print("did exit inside")
//        manager.stopRangingBeacons(in: region)
//    }
//    
//    
//    
//    
//    func beaconManager(_ manager: KTKBeaconManager, didRangeBeacons beacons: [CLBeacon], in region: KTKBeaconRegion) {
//        for beacon in beacons {
//            print("in the for loop")
//            print("Major: \(beacon.major) and Minor: \(beacon.minor) from \(region.identifier) in \(beacon.proximity) proximity\(beacon.rssi),\(beacon.description)")
//        }
//    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}




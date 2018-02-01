//
//  CardsTableViewController.swift
//  Hotpot
//
//  Created by siqi yang on 20/1/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import UIKit
import KontaktSDK


class CardsTableViewController: UITableViewController{
    
//    var beaconManager: KTKBeaconManager!
    var card_count: Int = 0
    var myDevices:[KTKNearbyDevice] = []
    
    var devicesManager: KTKDevicesManager!
    
    

    

    override func viewDidLoad() {

        
        devicesManager = KTKDevicesManager(delegate: self )
        devicesManager.startDevicesDiscovery(withInterval: 2.0)

    }
    

    
    
    override func viewWillAppear(_ animated: Bool) {
       
    }

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
        return card_count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CardsTableViewCell", for: indexPath)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CardsTableViewCell", for: indexPath) as? CardsTableViewCell else {
            // Add a new Subject.
            fatalError("The dequeued cell is not an instance of SubjectTableViewCell.")
        }
        
        
        let dev = myDevices[indexPath.row]
        cell.cardName.text = dev.name
        cell.cardRSSI.text = String(describing: dev.rssi)
        cell.cardID.text = dev.uniqueID

        

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }


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

    
    //MARK: - Actions
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "Success", message: "Your card has been connected!", preferredStyle: .alert)
        let cancelButton = UIAlertAction(title: "OK", style: .cancel, handler: { (action) -> Void in
        })
        alertController.addAction(cancelButton)
        self.navigationController!.present(alertController, animated: true, completion: nil)
        
        let selectedCardID = myDevices[indexPath.row].uniqueID
        
        
        TrackingViewController.connectedCard = selectedCardID!
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}




extension CardsTableViewController: KTKDevicesManagerDelegate {
    
    func devicesManager(_ manager: KTKDevicesManager, didDiscover devices: [KTKNearbyDevice]) {

        
        card_count = devices.count
        
        if card_count != 0 {
        
            myDevices = devices
            
        }
        tableView.reloadData()

        
        
    }
}







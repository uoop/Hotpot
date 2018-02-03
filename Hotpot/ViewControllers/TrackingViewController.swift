//
//  TrackingViewController.swift
//  Hotpot
//
//  Created by siqi yang on 20/1/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import UIKit



class TrackingViewController: UIViewController{
    

    
    static var connectedCard: String = ""

    @IBOutlet weak var connectButton: RoundButton!
    @IBOutlet weak var trackingCardID: UILabel!
    
    @IBOutlet weak var heatmapImage: UIImageView!
    
    
    
    
//    @IBAction func unwindToTracking(segue: UIStoryboardSegue) {
//        
//        switch(segue.identifier ?? "") {
//        case "card":
//            
//            trackingCardID.text = "Tracking: \(String(describing: TrackingViewController.connectedCard))..."
//            trackingCardID.reloadInputViews()
//        case "data":
//            print("data pressed, now get heatmap")
//            
//        default:
//            print("nothing")
//        }
//        
//        
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        trackingCardID.text = "Tracking: \(String(describing: TrackingViewController.connectedCard))..."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func showHeatmap(_ sender: RoundButton) {
        
        let url = URL(string: "https://plot.ly/~LindenGoode/1.png")
        let data = try? Data(contentsOf: url!) 
        heatmapImage.image = UIImage(data: data!)
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    

 

}


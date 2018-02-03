//
//  AnalysisViewController.swift
//  Hotpot
//
//  Created by siqi yang on 3/2/18.
//  Copyright © 2018 rmit. All rights reserved.
//

import UIKit

class AnalysisViewController: UIViewController {

    @IBOutlet weak var graphImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    // MARK: - Actions
    
    @IBAction func showGraph1(_ sender: Any) {
        let url = URL(string: "https://plot.ly/~Cloud2018/9.png")
        let data = try? Data(contentsOf: url!)
        graphImage.image = UIImage(data: data!)
    }
    
    @IBAction func showGraph2(_ sender: Any) {
        let url = URL(string: "https://plot.ly/~Cloud2018/5.png")
        let data = try? Data(contentsOf: url!)
        graphImage.image = UIImage(data: data!)
    }
    
    @IBAction func showGraph3(_ sender: Any) {
        let url = URL(string: "https://plot.ly/~Cloud2018/7.png")
        let data = try? Data(contentsOf: url!)
        graphImage.image = UIImage(data: data!)
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

//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Shashank Kannam on 10/10/16.
//  Copyright © 2016 Shashank Kannam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewx:UITableView!
    
    
    
    
    var partyRocks:[party] = [party]()
    
   
    
    //let url2:String =
    
    let p1 = party(videoTitle: "pakkalocal", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GFEj1vnhvxA\" frameborder=\"0\" allowfullscreen></iframe>", imageURL: "http://3.bp.blogspot.com/-7-Ez41abpxQ/Th-oDr2dqJI/AAAAAAAABwQ/AiSUDpKCJiA/s1600/sexy-Katrina-Kaif-sheila-ki-jawani-Pics-and-Wallpapers-Or-Photos+%25283%2529.jpg")
    
     let p2 = party(videoTitle: "Shila", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZTmF2v59CtI\" frameborder=\"0\" allowfullscreen></iframe>", imageURL: "https://2.bp.blogspot.com/-hO_ZI_Ly354/V94dkP-wd3I/AAAAAAAAJsA/C16e510niN0rhXl4TBfwUCaF-5STk0CBgCLcB/s640/kajal-pakka.jpg")
    
    let p3 = party(videoTitle: "pakkalocal2", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GFEj1vnhvxA\" frameborder=\"0\" allowfullscreen></iframe>", imageURL: "http://3.bp.blogspot.com/-7-Ez41abpxQ/Th-oDr2dqJI/AAAAAAAABwQ/AiSUDpKCJiA/s1600/sexy-Katrina-Kaif-sheila-ki-jawani-Pics-and-Wallpapers-Or-Photos+%25283%2529.jpg")
    
    let p4 = party(videoTitle: "Shila2", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ouXn5CK0wTU\" frameborder=\"0\" allowfullscreen></iframe>", imageURL: "http://3.bp.blogspot.com/-7-Ez41abpxQ/Th-oDr2dqJI/AAAAAAAABwQ/AiSUDpKCJiA/s1600/sexy-Katrina-Kaif-sheila-ki-jawani-Pics-and-Wallpapers-Or-Photos+%25283%2529.jpg")
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    tableViewx.delegate=self
        tableViewx.dataSource=self
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "partyCell", for: indexPath) as? partyCellTableViewCell
        {
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(party: partyRock)
            
            return cell
        }
        else{
            return UITableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return partyRocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let partyRock = partyRocks[indexPath.row]
      performSegue(withIdentifier: "videoVC", sender: partyRock)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? VideoViewController
        {
            if let partyR = sender as? party
            {
                dest.partyRock = partyR
            }
        }
    }
}


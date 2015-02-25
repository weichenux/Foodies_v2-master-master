//
//  RestaurantViewController.swift
//  Foodies_v2
//
//  Created by Wei Chen on 2/22/15.
//  Copyright (c) 2015 Wei Chen. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //var client: YelpClient!
    
    @IBOutlet weak var tableView: UITableView!
    
    // You can register for Yelp API keys here: http://www.yelp.com/developers/manage_api_keys
    let yelpConsumerKey = "zCxiOdpqh15D42Yb-6crNw"
    let yelpConsumerSecret = "JnkTVECmLzmrGxS5Q3CXrVJoy9Y"
    let yelpToken = "y8jL57GaqK7Dkvd4Xt4LdH4taA0m4tam"
    let yelpTokenSecret = "3Ap3T8k-dGN8ttevEMUj3TkCQHw"
    
    
    var r1 = [
        "name" : "DishDash",
        "address" : "190 S Murphy Ave, Sunnyvale, CA 94086",
        "cuisine": "Middle Eastern"
    ]
    
    var r2 = [
        "name" : "The Sandwich Spot",
        "address": "121 South Francis St, Sunnyvale, CA 94086",
        "cuisine" : "Sandwiches"
    ]
    
    var r3 = [
        "name" : "Bibimbowl",
        "address": "415 Mary Ave, Sunnyvale, CA 94086",
        "cuisine" : "Korean"
    ]
    
    var r4 = [
        "name" : "Sunnyvale Cafe",
        "address": "223 E Maude Ave, Sunnyvale, CA 94086",
        "cuisine" : "Cafe"
    ]
    
    var r5 = [
        "name" : "Bon Chon Chicken",
        "address": "572 E El Camino Real, Sunnyvale, CA 94086",
        "cuisine" : "Japanese"
    ]
    
    var r6 = [
        "name" : "Bibimbowl",
        "address": "415 Mary Ave, Sunnyvale, CA 94086",
        "cuisine" : "Chicken Wings"
    ]
    
    var restaurants:[[String: String]] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 77
        

        // Do any additional setup after loading the view.
        
        restaurants = [r1, r2, r3, r4, r5, r6]
//        
//        client = YelpClient(consumerKey: yelpConsumerKey, consumerSecret: yelpConsumerSecret, accessToken: yelpToken, accessSecret: yelpTokenSecret)
//        
//        client.searchWithTerm("Thai", success: { (operation: AFHTTPRequestOperation!, response: AnyObject!) -> Void in
//            println(response)
//            }) { (operation: AFHTTPRequestOperation!, error: NSError!) -> Void in
//                println(error)
//        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("RestaurantCell") as RestaurantCell
        cell.nameLabel.text = self.restaurants[indexPath.row]["name"]
        cell.addressLabel.text = self.restaurants[indexPath.row]["address"]
        cell.cuisineLabel.text = self.restaurants[indexPath.row]["cuisine"]
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            print("hei");
        } else if (editingStyle == UITableViewCellEditingStyle.None) {
            print("ha")
        }
    }
    

    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]?  {
        // 1
        var planAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Plan" , handler: { (action:UITableViewRowAction!, indexPath:NSIndexPath!) -> Void in
            
            self.performSegueWithIdentifier("planSegue", sender: nil)
        })
        
        return [planAction]
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

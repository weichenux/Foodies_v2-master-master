//
//  NewsFeedViewController.swift
//  Foodies_v2
//
//  Created by Wei Chen on 2/22/15.
//  Copyright (c) 2015 Wei Chen. All rights reserved.
//

import UIKit

class NewsFeedViewController: UIViewController {
    
    var refreshControl: UIRefreshControl!

    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet weak var feedImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: "onRefresh", forControlEvents: UIControlEvents.ValueChanged)
        scrollView.insertSubview(refreshControl, atIndex: 0)
        
        scrollView.contentSize = CGSizeMake(320, feedImageView.image!.size.height)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onRefresh() {
        delay(2, {
            self.refreshControl.endRefreshing()
        })
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

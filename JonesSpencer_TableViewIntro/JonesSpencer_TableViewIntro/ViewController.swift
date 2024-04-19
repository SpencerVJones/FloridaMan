//  ViewController.swift
//  JonesSpencer_TableViewIntro
//  Created by Spencer Jones on 4/17/24.
//  All data is from the subreddit r/FloridaMan including the app icon

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource { 
    
    // Outlets
    @IBOutlet var tableView: UITableView!
    
    // Empty array of Posts
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Call download and parse method
        downloadAndParse(jsonAtUrl: "https://www.reddit.com/r/FloridaMan/.json")
    }
    
    // MARK: UITableViewDataSource Protocol Callbacks
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Returns the amount of rows for the amount of posts in posts array
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell_ID_1", for: indexPath)
        
        // Configure cell to get title, author, and thumbnail
        cell.textLabel?.text = posts[indexPath.row].title
        cell.detailTextLabel?.text = posts[indexPath.row].formattedAuthor
        cell.imageView?.image = posts[indexPath.row].thumbnail
        
        // Return configured cell
        return cell
    }
    
    // Set the height of the cell
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

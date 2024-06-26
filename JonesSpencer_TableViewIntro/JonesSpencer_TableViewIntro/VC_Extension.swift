//  VC_Extension.swift
//  JonesSpencer_TableViewIntro
//  Created by Spencer Jones on 4/17/24.
//  All data is from the subreddit r/FloridaMan including the app icon

import Foundation
import UIKit

extension ViewController {
    
    // Helper method to download and parse json at url(String)
    func downloadAndParse(jsonAtUrl urlString: String) {
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        if let validURL = URL(string: urlString) {
            
            let task = session.dataTask(with: validURL, completionHandler: { (opt_data, opt_response, opt_error) in
                
                // Bail Out on error
                if opt_error != nil { return }
                
                // Check the response, statusCode, and data
                guard let response = opt_response as? HTTPURLResponse,
                      response.statusCode == 200,
                      let data = opt_data
                else { return }
                
                do {
                    // De-Serialize data object
                    if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                        
                        // Parse Data
                        if let data = json["data"] as? [String: Any] {
                            if let children = data["children"] as? [[String: Any]] {
                                for child in children {
                                    guard let childData = child["data"] as? [String: Any],
                                          let author = childData["author"] as? String,
                                          let title = childData["title"] as? String,
                                          let thumbnailURL = childData["thumbnail"] as? String,
                                          thumbnailURL.contains("https") else { continue } // Only getting data with thumbnails
                                    
                                    // Map the model object
                                    let newPost = Post(author: author, title: title, thumbnailString: thumbnailURL)
                                    self.posts.append(newPost)
                                }
                            }
                        }
                    }
                } catch { print(error.localizedDescription) }
                
                // Reload the Table View
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            })
            task.resume()
        }
    }
}

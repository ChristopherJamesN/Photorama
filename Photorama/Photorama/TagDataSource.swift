//
//  TagDataSource.swift
//  Photorama
//
//  Created by Christopher Nady on 8/8/17.
//  Copyright © 2017 Nady Analytics, LLC. All rights reserved.
//

import UIKit
import CoreData

class TagDataSource: NSObject, UITableViewDataSource {
    
    var tags: [Tag] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tags.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        let tag = tags[indexPath.row]
        cell.textLabel?.text = tag.name
        
        cell.accessibilityLabel = "Double tap to toggle selected"
        
        return cell
    }
}

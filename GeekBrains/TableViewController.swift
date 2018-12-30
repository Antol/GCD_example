//
//  TableViewController.swift
//  GeekBrains
//
//  Created by Antol Peshkov on 30/12/2018.
//  Copyright © 2018 Antol Peshkov. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class TableViewController: UITableViewController {
    
    let imageUrls = ["https://purr.objects-us-east-1.dream.io/i/img_20161219_194821.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/img_20160205_103655.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/marthaanddotty.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/AD7c7.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/ZMCJYrM.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/cad6d0dfdaab15f2a170944b010d682c.jpeg",
                     "https://purr.objects-us-east-1.dream.io/i/PKnPr.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/iphone2015006.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/XWSY6.jpg",
                     "https://purr.objects-us-east-1.dream.io/i/murphyhiding.jpeg",
                     "https://purr.objects-us-east-1.dream.io/i/Eu8F6.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageUrls.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: TableViewCell.self), for: indexPath) as! TableViewCell
        Alamofire.request(URL(string: imageUrls[indexPath.row])!).responseImage { response in
            cell.catImageView.image = response.result.value
        }
        return cell
    }
    
}

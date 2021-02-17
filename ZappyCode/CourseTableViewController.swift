//
//  CourseTableViewController.swift
//  ZappyCode
//
//  Created by yabby on 2021/02/17.
//

import UIKit

class CourseTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getCourses()
    }
    
    func getCourses(){
        if let url = URL(string: "https://zappycode.com/api/courses"){
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            URLSession.shared.dataTask(with: request) {(data, response, error) in
                if error != nil {
                    print("ERR")
                } else if data != nil {
                    print(String(data: data!, encoding: .utf8)!)
                }
            }.resume()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        return cell
    }
}

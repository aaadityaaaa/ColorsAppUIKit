//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Aaditya Singh on 08/12/22.
//

import UIKit

class ColorsTableVC: UIViewController{
   
    var colors: [UIColor] = []
    
    
    enum Cells {
        static let colorCell = "ColorCell"
    }
    
    enum Segue {
        static let colorSegue = "detail"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
    }
    
    func createRandomColors() {
        for _ in 0..<50 {
            colors.append(UIColor.generateAColor())
        }
    }
    //when you need to pass in some data in a segue you need to setup prepare for segue function
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ColorsDetailVC
        destinationVC.color = sender as? UIColor
    }

}


extension ColorsTableVC: UITableViewDataSource, UITableViewDelegate  {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segue.colorSegue, sender: color)
    }
    
    
}

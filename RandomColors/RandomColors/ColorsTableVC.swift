//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by Montana  on 6/20/20.
//  Copyright © 2020 Montana Braswell. All rights reserved.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    var colors: [UIColor] = []
    
    // using enum to store info in variables to deter making string mistakes
    enum Cells {
        static let ColorCell = "ColorCell"
    }
    
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           addRandomColors()

           // Do any additional setup after loading the view.
       }

    func addRandomColors() {
        
        for _ in 0..<50 {
            colors.append(.random())
        }
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
    
    
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
     // how many rows I need to show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
      }
    
      // this function happens automatically once gets called when a cell row gets created
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //if cell with our cell with identify color cell is nil, it'll return a blank tableview cell instead of crashing
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Cells.ColorCell) else {
            return UITableViewCell()
        }
            // setting the background color to the cells
            cell.backgroundColor = colors[indexPath.row]
            return cell
        
      }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // whatever row we tap thats the number we pass into our color
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
    
}
    



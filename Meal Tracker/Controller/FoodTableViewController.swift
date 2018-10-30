//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Dallin Smuin on 10/29/18.
//  Copyright © 2018 Dallin Smuin. All rights reserved.
//

import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] = [
        Meal(name: "Breakfast", food: [Food(soemthingThatHasNothingToDoWithThisProjectJustAReallyLongName: "Eggs", description: "They are really healthy for your body.")]),
        Meal(name: "Lunch", food: [Food(soemthingThatHasNothingToDoWithThisProjectJustAReallyLongName: "Salad", description: "It helps cleans the system inside of your body.")]),
        Meal(name: "Dinner", food: [Food(soemthingThatHasNothingToDoWithThisProjectJustAReallyLongName: "Steak", description: "Your body needs to have iron where your blood and muscle can work properly.")])
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell", for: indexPath)

        // Configure the cell...
        //This gets the section for the meal, then using the meal section you can get the meal
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        cell.textLabel?.text = food.soemthingThatHasNothingToDoWithThisProjectJustAReallyLongName
        cell.detailTextLabel?.text = food.description
        

        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
    }
}

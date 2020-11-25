//
//  PrevUploadsTableViewController.swift
//  X-ray Analysis
//
//  Created by Taylor Shaw on 11/12/20.
//

import UIKit

class PrevUploadsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myIdentifier", for: indexPath)

        // Configure the cell...
        if indexPath.row == 0 {
            cell.textLabel?.text = "Results uploaded at 12:13 pm today"
        }
        if indexPath.row == 1 {
            cell.textLabel?.text = "Results uploaded Nov. 29, 2020 at 1:53 pm"
        }
        if indexPath.row == 2 {
                cell.textLabel?.text = "Results uploaded Nov. 29, 2020 at 11:46 am"
        }
        if indexPath.row == 3 {
                cell.textLabel?.text = "Results uploaded Nov. 16, 2020"
        }
        if indexPath.row == 4 {
                cell.textLabel?.text = "Results uploaded Oct. 29, 2020"
        }
//        cell.textLabel?.text = "Cell "+String(indexPath.row)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if (indexPath.row / 2) * 2 == indexPath.row {
//                debugPrint("is even")
                if let evenXRayViewController = self.storyboard?.instantiateViewController(withIdentifier: "vc2") as UIViewController? {
                    self.navigationController?.pushViewController(evenXRayViewController, animated: true)
                }
                  //self.present(planXRayViewController, animated: true, completion: nil)
            } else {
//                debugPrint("is odd")
                if let oddXRayViewController = self.storyboard?.instantiateViewController(withIdentifier: "vc1") as UIViewController? {
                    self.navigationController?.pushViewController(oddXRayViewController, animated: true)
                }
            }
        }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController4.swift
//  RAAHI
//
//  Created by admin3 on 05/11/24.
//
import UIKit

class ManualItinerarySelectionViewController4: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let manualItineraryList = data[indexPath.row]
//        let cell1 = table4.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CustomTableViewCell1
//        cell1.Title1.text = manualItineraryList.title4
//        cell1.Title2.text = manualItineraryList.title5
//        cell1.Title3.text = manualItineraryList.title6
//        cell1.iconImageView.image = UIImage(named: manualItineraryList.image4)
//        cell1.iconImageView.layer.cornerRadius = 10
//        return cell1
//        
//    }
//    
    
    
    @IBOutlet weak var manualSearchBar: UISearchBar!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    //    var filteredData: [manualItineraryList] = []

    
    @IBOutlet weak var table4: UITableView!
    
    @IBOutlet weak var table5: UITableView!
    
//    struct manualItineraryList{
//        let title4: String
//        let title5: String
//        let title6: String
//        let image4: String
//    }
//    let data: [manualItineraryList] = [
//        manualItineraryList(title4: "St. Thomas Cathedral Basilica", title5: "Catholic Cathedral", title6: "Duration: 1-2 hours", image4: "image 57"),
//        manualItineraryList(title4: "Arulmigu Shri Parthasarthy Perumal Temple", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 52"),
//        manualItineraryList(title4: "VGP Universal Kingdom", title5: "Amusement Park", title6: "Duration: 3-4 hours", image4: "image 235"),
//        manualItineraryList(title4: "Walajah Big Mosque", title5: "Mosque", title6: "Duration: 3-4 hours", image4: "image 59"),
//        manualItineraryList(title4: "Meenakshi Temple", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 229"),
//        manualItineraryList(title4: "Shore Temple, Mahabalipuram", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 58"),
//        manualItineraryList(title4: "Blue Flag Beach", title5: "Beach", title6: "Duration: 3-4 hours", image4: "blue"),
//        manualItineraryList(title4: "Marina Beach", title5: "Beach", title6: "Duration: 1-2 hours", image4: "image 59"),
//        
//    ]
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        filteredData = data
//        manualSearchBar.delegate = self
//        table4.dataSource = self
//        table4.delegate = self
//        
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 100
//    }
//    
//}
    
    
    struct manualItineraryList {
            let title4: String
            let title5: String
            let title6: String
            let image4: String
        }

        // Data array
        let data: [manualItineraryList] = [
            manualItineraryList(title4: "St. Thomas Cathedral Basilica", title5: "Catholic Cathedral", title6: "Duration: 1-2 hours", image4: "image 57"),
            manualItineraryList(title4: "Arulmigu Shri Parthasarthy Perumal Temple", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 52"),
            manualItineraryList(title4: "VGP Universal Kingdom", title5: "Amusement Park", title6: "Duration: 3-4 hours", image4: "image 235"),
            manualItineraryList(title4: "Walajah Big Mosque", title5: "Mosque", title6: "Duration: 3-4 hours", image4: "image 59"),
            manualItineraryList(title4: "Meenakshi Temple", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 229"),
            manualItineraryList(title4: "Shore Temple, Mahabalipuram", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 58"),
            manualItineraryList(title4: "Blue Flag Beach", title5: "Beach", title6: "Duration: 3-4 hours", image4: "blue"),
            manualItineraryList(title4: "Marina Beach", title5: "Beach", title6: "Duration: 1-2 hours", image4: "image 59"),
        ]
    
    let data1: [manualItineraryList] = [
        
        manualItineraryList(title4: "Blue Flag Beach", title5: "Beach", title6: "Duration: 3-4 hours", image4: "blue"),
        manualItineraryList(title4: "Marina Beach", title5: "Beach", title6: "Duration: 1-2 hours", image4: "image 59"),
        manualItineraryList(title4: "VGP Universal Kingdom", title5: "Amusement Park", title6: "Duration: 3-4 hours", image4: "image 235"),
        manualItineraryList(title4: "Walajah Big Mosque", title5: "Mosque", title6: "Duration: 3-4 hours", image4: "image 59"),
        manualItineraryList(title4: "Meenakshi Temple", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 229"),
        manualItineraryList(title4: "Shore Temple, Mahabalipuram", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 58"),
        manualItineraryList(title4: "St. Thomas Cathedral Basilica", title5: "Catholic Cathedral", title6: "Duration: 1-2 hours", image4: "image 57"),
        manualItineraryList(title4: "Arulmigu Shri Parthasarthy Perumal Temple", title5: "Hindu Temple", title6: "Duration: 1-2 hours", image4: "image 52"),
        
        
    ]
    

        // Filtered data for search results
        var filteredData: [manualItineraryList] = []

        override func viewDidLoad() {
            super.viewDidLoad()

            // Initialize filteredData with all data
            filteredData = data

            // Set delegates
            manualSearchBar.delegate = self
            table4.dataSource = self
            table4.delegate = self
            
            table5.dataSource = self
            table5.delegate = self
            table5.isHidden = true
        }
    
    
    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            table4.isHidden = false
            table5.isHidden = true
        } else {
            table4.isHidden = true
            table5.isHidden = false
        }
    }
    

        // TableView DataSource Methods
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if tableView == table4 {
                return filteredData.count
            } else {
                return data1.count
            }
            
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if tableView == table4 {
                let manualItineraryList = filteredData[indexPath.row]
                let cell1 = table4.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CustomTableViewCell1
                cell1.Title1.text = manualItineraryList.title4
                //cell1.Title2.text = manualItineraryList.title5
                //cell1.Title3.text = manualItineraryList.title6
                cell1.iconImageView.image = UIImage(named: manualItineraryList.image4)
                cell1.iconImageView.layer.cornerRadius = 10
                return cell1
            } else {
                let manualItineraryList = data1[indexPath.row]
                let cell = table5.dequeueReusableCell(withIdentifier: "AddItineraryTableViewCell", for: indexPath) as! AddItineraryTableViewCell
                cell.Title10.text = manualItineraryList.title4
                cell.iconImageView2.image = UIImage(named: manualItineraryList.image4)
                cell.iconImageView2.layer.cornerRadius = 10
                return cell
            }
            
        }

        // TableView Delegate Method to Set Row Height
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if tableView == table4 {
                return 100
            } else {
                return 100
            }
            
        }

        // UISearchBarDelegate Method for Search Functionality
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            if searchText.isEmpty {
                filteredData = data
            } else {
                filteredData = data.filter { $0.title4.lowercased().contains(searchText.lowercased()) }
            }
            table4.reloadData()
        }

        // Optional: Dismiss Keyboard When Search Ends
        func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
            searchBar.resignFirstResponder()
        }

        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.text = ""
            filteredData = data
            table4.reloadData()
            searchBar.resignFirstResponder()
        }
    }

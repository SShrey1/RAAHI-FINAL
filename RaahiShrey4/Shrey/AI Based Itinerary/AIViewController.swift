//
//  AIViewController.swift
//  RaahiShrey4
//
//  Created by user@59 on 22/08/1946 Saka.
//

import UIKit

class AIViewController : UIViewController {
    
    
    @IBOutlet weak var AIImage: UIImageView!
    
    
    @IBOutlet weak var AILabel: UILabel!
    
    @IBOutlet weak var InterestsLabel: UILabel!
    
    
    @IBOutlet weak var BeachesButton: UIButton!
    
    @IBOutlet weak var TrekkingButton: UIButton!
    
    @IBOutlet weak var MarketsButton: UIButton!
    
    @IBOutlet weak var AdventureButton: UIButton!
    
    @IBOutlet weak var HiddenButton: UIButton!
    
    
    @IBOutlet weak var ParksButton: UIButton!
    
    @IBOutlet weak var HolyButton: UIButton!
    
    @IBOutlet weak var BoatingButton: UIButton!
    
    
    @IBOutlet weak var ArtButton: UIButton!
    
    
    @IBOutlet weak var AddInterest: UIButton!
    
    
    @IBOutlet weak var DaysButton: UIButton!
    
    
    @IBOutlet weak var TravelTypeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        BeachesButton.layer.cornerRadius = 20
        BeachesButton.clipsToBounds = true
        
        TrekkingButton.layer.cornerRadius = 20
        TrekkingButton.clipsToBounds = true
        
        MarketsButton.layer.cornerRadius = 20
        MarketsButton.clipsToBounds = true
        
        AdventureButton.layer.cornerRadius = 20
        AdventureButton.clipsToBounds = true
        
        HiddenButton.layer.cornerRadius = 20
        HiddenButton.clipsToBounds = true
        
        ParksButton.layer.cornerRadius = 20
        ParksButton.clipsToBounds = true
        
        HolyButton.layer.cornerRadius = 20
        HolyButton.clipsToBounds = true
        
        BoatingButton.layer.cornerRadius = 20
        BoatingButton.clipsToBounds = true
        
        ArtButton.layer.cornerRadius = 20
        ArtButton.clipsToBounds = true
        
        let menuItems = [
                UIAction(title: "1", handler: { _ in self.optionSelected("1 Day") }),
                UIAction(title: "2", handler: { _ in self.optionSelected("2 Days") }),
                UIAction(title: "3", handler: { _ in self.optionSelected("3 Days") }),
                UIAction(title: "4", handler: { _ in self.optionSelected("4 Days") }),
                UIAction(title: "5", handler: { _ in self.optionSelected("5 Days") })
            ]
            
            
            let menu = UIMenu(title: "", children: menuItems)
            
            
        DaysButton.menu = menu
        DaysButton.showsMenuAsPrimaryAction = true
        
        let menuItems2 = [
                UIAction(title: "Solo", handler: { _ in self.optionSelected2("Solo") }),
                UIAction(title: "Family", handler: { _ in self.optionSelected2("Family") }),
                UIAction(title: "Friends", handler: { _ in self.optionSelected2("Friends") }),
                UIAction(title: "Corporate", handler: { _ in self.optionSelected2("Corporate") })
            ]
            
            
            let menu2 = UIMenu(title: "", children: menuItems2)
            
            
        TravelTypeButton.menu = menu2
        TravelTypeButton.showsMenuAsPrimaryAction = true
        
        
        
    }
    
    
    
    
//    @IBAction func TrekkingTapped(_ sender: UIButton) {
//        
//        if sender.isSelected {
//            sender.backgroundColor = .systemBlue
//            sender.setTitleColor(UIColor.white, for: .normal)
//        } else {
//            sender.backgroundColor = .white
//            sender.setTitleColor(.black, for: .normal)
//        }
//    }
    
    @IBAction func BeachesTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        if sender.isSelected {
            sender.backgroundColor = .systemBlue
            sender.setTitleColor(UIColor.white, for: .normal)
            
        } else {
            sender.backgroundColor = .white
                    sender.setTitleColor(UIColor.black, for: .normal)
        }
        
    }
    
    func optionSelected(_ option: String) {
        print("Selected: \(option)")
        DaysButton.setTitle(option, for: .normal)
    }
    
    func optionSelected2(_ option: String) {
        print("Selected: \(option)")
        TravelTypeButton.setTitle(option, for: .normal)
    }
    
}

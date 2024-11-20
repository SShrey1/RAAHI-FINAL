//
//  City.swift
//  RaahiShrey4
//
//  Created by user@59 on 05/11/24.
//

import UIKit

struct City {
    let title : String
    let image : UIImage
}

let cities : [City] = [
    City(title: "Chennai", image: UIImage(named: "chennai 2")!),
    City(title: "Varanasi", image: UIImage(named: "banaras")!),
    City(title: "Kolkata", image: UIImage(named: "kolkata 3")!),
    City(title: "Kochi", image: UIImage(named: "kochi 3")!),
    City(title: "Hyderabad", image: UIImage(named: "hyderbad1")!),
    City(title: "Udaipur", image: UIImage(named: "udaipur 2")!),
    City(title: "Delhi", image: UIImage(named: "delhi 2")!),
    City(title: "Shimla", image: UIImage(named: "shimla")!),
    City(title: "Tirupati", image: UIImage(named: "tirupati")!),
    City(title: "Pondicherry", image: UIImage(named: "pondicherry")!)
    
    ]

struct itinerary {
    let title : String
    let status : String
    let image : UIImage
}

let itineraries : [itinerary] = [
    itinerary(title: "Chennai", status: "Visited", image: UIImage(named: "chennai 2")!),
    itinerary(title: "Varanasi", status: "Visited", image: UIImage(named: "banaras")!),
    itinerary(title: "Kolkata", status: "Visited", image: UIImage(named: "kolkata 3")!),
    itinerary(title: "Kochi", status: "Visited", image: UIImage(named: "kochi 3")!)
    
    ]


struct Diary {
    let caption : String
    let name : String
    let location : String
    let image : UIImage
}

let diaries : [Diary] = [
    Diary(caption: "A Trip To Kolkata", name: "Akshat Rawat", location: "Kolkata", image: UIImage(named: "Diary1")!),
    Diary(caption: "A Trip To Kolkata", name: "Akshat Rawat", location: "Kolkata", image: UIImage(named: "Diary2")!),
    Diary(caption: "A Trip To Kolkata", name: "Akshat Rawat", location: "Kolkata", image: UIImage(named: "Diary3")!),
    Diary(caption: "A Trip To Kolkata", name: "Akshat Rawat", location: "Kolkata", image: UIImage(named: "Diary7")!),
    Diary(caption: "A Trip To Kolkata", name: "Akshat Rawat", location: "Kolkata", image: UIImage(named: "Diary12")!),
    Diary(caption: "A Trip To Kolkata", name: "Akshat Rawat", location: "Kolkata", image: UIImage(named: "Diary6")!)
    
]

struct Selection {
    let title : String
    let image : UIImage
}

let selections : [Selection] = [
    Selection(title: "Adventure", image: UIImage(named: "image 470")!),
    Selection(title: "Monuments", image: UIImage(named: "image 471")!),
    Selection(title: "Religious", image: UIImage(named: "image 473")!),
    Selection(title: "Beaches", image: UIImage(named: "image 472")!),
    ]


struct Insite {
    let title : String
    let type : String
    let price : String
    let image : UIImage
    
}

let insites : [Insite] = [
    Insite(title: "St. Thomas Cathedral Basilica", type: "Shrines", price: "Free", image: UIImage(named: "St Thomas")!),
    Insite(title: "Parthasarthy Temple", type: "Shrines", price: "Free", image: UIImage(named: "Parthasarthy")!),
    Insite(title: "Walajah Big Mosque", type: "Religious", price: "Free", image: UIImage(named: "Walajah")!),
    Insite(title: "Meenakshi Temple", type: "Shrines", price: "Free", image: UIImage(named: "Mennakshi")!),
    Insite(title: "Blu Flag Beach", type: "Beaches", price: "Free", image: UIImage(named: "Blu Flag")!),
    Insite(title: "VGP Universal Kingdom", type: "Adventure", price: "Rs. 850", image: UIImage(named: "VGP")!),
    Insite(title: "Shore Temple, Mahabalipuram", type: "Beaches", price: "Rs. 50", image: UIImage(named: "Shore Temple")!),
    Insite(title: "Marina Beach", type: "Monuments", price: "Free", image: UIImage(named: "Marina")!),
    
    
    ]

struct Popular {
    let title : String
}

let populars : [Popular] = [
    Popular(title: "Popular Cities")
    ]

struct City1 {
    let title : String
    let image : UIImage
}

let cities1 : [City1] = [
    City1(title: "Delhi", image: UIImage(named: "image 291")!),
    City1(title: "Mumbai", image: UIImage(named: "image 292")!),
    City1(title: "Agra", image: UIImage(named: "image 293")!),
    City1(title: "Jaipur", image: UIImage(named: "image 295")!)
    ]
    
struct City2 {
    
    let title : String
    let image : UIImage
}

let cities2 : [City2] = [
    City2(title: "Varanasi", image: UIImage(named: "image 296 (1)")!),
    City2(title: "Goa", image: UIImage(named: "image 297")!),
    City2(title: "Bengaluru", image: UIImage(named: "image 298")!),
    City2(title: "Chennai", image: UIImage(named: "image 299 (1)")!)
    ]
    
struct Other {
    let title : String
}

let others : [Other] = [
    Other(title: "Other Cities")
    ]


struct City3 {
    let title : String
}

let cities3: [City3] = [
    City3(title: "Ahmedabad"),
    City3(title: "Alwar"),
    City3(title: "Amla"),
    City3(title: "Amritsar"),
    City3(title: "Aurangabad"),
    City3(title: "Bambora"),
    City3(title: "Bandhavgarh"),
    City3(title: "Bangalore"),
    City3(title: "Bhopal"),
    City3(title: "Bhubaneswar"),
    City3(title: "Chandigarh"),
    City3(title: "Chennai"),
    City3(title: "Coimbatore"),
    City3(title: "Darjeeling"),
    City3(title: "Dehradun"),
    City3(title: "Delhi"),
    City3(title: "Dharamshala"),
    City3(title: "Gandhinagar"),
    City3(title: "Gangtok"),
    City3(title: "Goa"),
    City3(title: "Guwahati"),
    City3(title: "Hyderabad"),
    City3(title: "Indore"),
    City3(title: "Jaipur"),
    City3(title: "Jaisalmer"),
    City3(title: "Jodhpur"),
    City3(title: "Kolkata"),
    City3(title: "Lucknow"),
    City3(title: "Mumbai"),
    City3(title: "Pune")
]


struct Story {
    let image : UIImage
    let title : String
}


struct userItineraryList{
    let day: String
    let title1: String
    let title2: String
    let title3: String
    let image1: String
    let image2: String
    let image3: String
    
}

let data:[userItineraryList] = [
    userItineraryList(day: "Day 1", title1: "Virupaksha Temple", title2: "Bazaars of Hampi", title3: "Stone Chariot", image1: "image 229", image2: "image 230", image3: "image 231"),
    userItineraryList(day: "Day 2", title1: "Vitalia Temple", title2: "Lotus Mahal", title3: "Coracle River Ride", image1: "image 232", image2: "image 234", image3: "image 235"),
    userItineraryList(day: "Day 3", title1: "Hemkuta Hill", title2: "Underground Shiva Temple", title3: "Jude's Church", image1: "image 236", image2: "image 237", image3: "image 211")
    
    
]

struct ListItem {
    let title: String
    let image: String
}


struct MockData {
    static let shared = MockData()
    
    private let trending: ListSection = {
        .trending([.init(title: "", image: "1"),
                  .init(title: "", image: "2"),
                  .init(title: "", image: "3"),
                  .init(title: "", image: "4"),
                  .init(title: "", image: "5"),
                  .init(title: "", image: "6")])
    }()
    
    private let adventure: ListSection = {
        .adventure([.init(title: "Trekking", image: "7"),
                  .init(title: "Safari", image: "8"),
                  .init(title: "Bungee", image: "9"),
                  .init(title: "Rafting", image: "10"),
                  .init(title: "Sky Diving", image: "11")])
    }()
    
    private let diary: ListSection = {
        .diary([.init(title: "West Bengal", image: "28"),
                     .init(title: "Goa", image: "14"),
                     .init(title: "Himachal Pradesh", image: "15"),
                     .init(title: "Madhya Pradesh", image: "16"),
                     .init(title: "Odisha", image: "17"),
                     .init(title: "Jammu & Kashmir", image: "18"),
                     .init(title: "Rajasthan", image: "19"),
                     .init(title: "Karnataka", image: "20")])
    }()
    
    var pageData: [ListSection] {
        [trending, adventure, diary]
    }
}

struct Safari {
    var title: String
    var imageName: String
    var location: String
    var bestTime: String
    var cost: String
}

let data1: [Safari] = [
    Safari(title: "Ranthambore National Park", imageName: "safari1", location: "Sawai Madhopur, Rajasthan", bestTime: "Best Time : Oct to June", cost: "Rs 1200/ Per Person"),
    Safari(title: "Hemis National Park", imageName: "safari2", location: "Sawai Madhopur, Rajasthan", bestTime: "Best Time : May to Sept", cost: "Rs 1500/ Per Person"),
    Safari(title: "Jim Corbett National Park", imageName: "safari3", location: "Nanital, Uttarakhand", bestTime: "Best Time : Oct to Feb", cost: "Rs 1250/ Per Person"),
    Safari(title: "Bandhavgarh National Park", imageName: "safari4", location: "Umaria, Madhya Pradesh", bestTime: "Best Time : Nov to Feb", cost: "Rs 2000/ Per Person"),
    Safari(title: "Sasan-Gir Wildlife Sanctuary", imageName: "safari3", location: "Talala Gir, Gujarat", bestTime: "Best Time : Dec to Mar", cost: "Rs 1100/ Per Person")
]

struct Trek {
    let title: String
    let imageName: String
    let location: String
    let duration: String
    let cost: String
}

let data2: [Trek] = [
    Trek(title: "Kashmir Great Lakes Trek", imageName: "t1", location: "Sonmarg, J&K", duration: "6 Days", cost: "Rs 17,950/ Per Person"),
    Trek(title: "Bhrigu Lake Trek", imageName: "t2", location: "Manali, Himachal Pradesh", duration: "5 Days", cost: "Rs 4,200/ Per Person"),
    Trek(title: "Hampta Pass Trek", imageName: "t3", location: "Manali, Himachal Pradesh", duration: "5 Days", cost: "Rs 11,500/ Per Person"),
    Trek(title: "Sandakphu Trek", imageName: "t4", location: "Dhotrey, West Bengal", duration: "7 Days", cost: "Rs 12,600/ Per Person"),
    Trek(title: "Goechala Trek", imageName: "t5", location: "Sikkim", duration: "11 Days", cost: "Rs 16,400/ Per Person")
]

struct Rafting {
    let title: String
    let imageName: String
    let location: String
    let distance: String
    let cost: String
}

let data3: [Rafting] = [
    Rafting(title: "River Ganga", imageName: "rafting1", location: "Rishikesh,Uttarakhand", distance: "9km-36km", cost: "Rs 2500/ Per Person"),
    Rafting(title: "Teesta River", imageName: "rafting2", location: "Darjeeling,Sikkim", distance: "11km-37km", cost: "Rs 6000/ Per Person"),
    Rafting(title: "Barapole River", imageName: "rafting3", location: "Coorg,Karnataka", distance: "8km", cost: "Rs 400/ Per Person"),
    Rafting(title: "Kundala River", imageName: "rafting4", location: "Kolad,Maharastra", distance: "16km", cost: "Rs 1200/ Per Person"),
    Rafting(title: "Brahamaputra River", imageName: "rafting5", location: "Arunachal Pradesh", distance: "180km", cost: "Rs 1100/ Per Person")
]

struct Diving {
    let title: String
    let imageName: String
    let location: String
    let Height: String
    let cost: String
}

let data4: [Diving] = [
    Diving(title: "Thrills Extreme", imageName: "sd1", location: "Aambey Valley, Maharashtra", Height: "10,000 ft", cost: "Rs 20,000/ Per Person"),
    Diving(title: "Parachuting Federation", imageName: "sd2", location: "Deesa, Gujarat", Height: "3,500 ft", cost: "Rs 16,500/ Per Person"),
    Diving(title: "Thrills Extreme", imageName: "sd3", location: "Dhana, Madhya Pradesh", Height: "9,000 ft", cost: "Rs 35,000/ Per Person"),
    Diving(title: "Sky High", imageName: "sd4", location: "Narnaul, Haryana", Height: "10,000 ft", cost: "Rs 27,500/ Per Person"),
    Diving(title: "Sky High", imageName: "sd5", location: "Aligarh, Uttar Pradesh", Height: "9,000 ft", cost: "Rs 27,025/ Per Person")
]


struct Bungee {
    let title: String
    let imageName: String
    let location: String
    let Height: String
    let cost: String
}

let data5: [Bungee] = [
    Bungee(title: "Bungee Heights", imageName: "bj1", location: "Rishikesh,Uttarakhand", Height: "83 m ft", cost: "Rs 3,500/ Per Person"),
    Bungee(title: "Della Adventures", imageName: "bj2", location: "Lonavla,Mahrashtra", Height: "45 m", cost: "Rs 1,500/ Per Person"),
    Bungee(title: "Ozone Adventures", imageName: "bj3", location: "Banglore, Karnataka", Height: "25 m", cost: "Rs 400/ Per Person"),
    Bungee(title: "Wanderlust", imageName: "bj4", location: "New Delhi", Height: "52 m", cost: "Rs 3,000/ Per Person"),
    Bungee(title: "Gravity Adventure", imageName: "bj5", location: "Goa", Height: "25 m", cost: "Rs 500/ Per Person")
]

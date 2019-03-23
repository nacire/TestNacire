//
//  DataModel.swift
//  TestNacire
//
//  Created by Nacire on 23/03/2019.
//  Copyright © 2019 Nacire. All rights reserved.
//

// fetches the data in the format i want

import Foundation


// Info retrieved from API
struct DataModel
{
    let title : String
    let released : String
    let runTime : String
    let genre : String
    let plot : String
    let language : String
    let imdbRating : String
    let data : Data
    init(title : String, released : String, runTime : String, genre : String,plot : String, language : String, imdbRating : String, data : Data)
    {
        self.title = title
        self.released = released
        self.runTime = runTime
        self.genre = genre
        self.plot = plot
        self.language = language
        self.imdbRating = imdbRating
        self.data = data
    }
}

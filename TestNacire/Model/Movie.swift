//
//  Movie.swift
//  TestNacire
//
//  Created by Nacire on 23/03/2019.
//  Copyright © 2019 Nacire. All rights reserved.
//


import Foundation


// Retrieve info from model in JSON format 
class Movie {
    
    
    func find(name : String, success : (DataModel) -> Void, failure : (String) -> Void)
    {
        
        // get data with url of each element
        let url = "https://www.omdbapi.com/?apikey=b2b35f1a&t="+name
        if let url = URL(string: url) {
            if let data = try? String(contentsOf: url) {
                let json = JSON(parseJSON: data)
                let title = json["Title"].stringValue
                let released = json["Released"].stringValue
                let runTime = json["Runtime"].stringValue
                let genre = json["Genre"].stringValue
                let plot = json["Plot"].stringValue
                let language = json["Language"].stringValue
                let imdbRating = json["imdbRating"].stringValue
                let poster = json["Poster"].stringValue
                
                
                // if poster not empty, do/catch block
                if !poster.isEmpty
                {
                    let imageUrl = URL(string:poster)
                    do
                    {
                        let data = try Data(contentsOf: imageUrl!)
                        let imageData = data
                        
                        // once you got all the data, add it to the view
                        let datamodel = DataModel(title: title, released: released, runTime: runTime, genre: genre, plot: plot, language: language, imdbRating: imdbRating, data: imageData)
                        success(datamodel)
                    }
                    catch
                    {
                        print("not found")
                    }
                }
                else
                {
                    failure("failure")
                }
            }
        }
    }
    
    
}

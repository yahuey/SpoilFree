//
//  Landmark.swift
//  Landmarks
//
//  Created by Javier Benitez on 2/4/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Book: Hashable, Codable, Identifiable  {
    var id: Int
    var Title: String
    var genre: String
    var description: String
    var description2: String
    var series: String
}

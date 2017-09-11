//
//  ModelHelpers.swift
//  FacesOfMarvel
//
//  Created by Michael Castillo on 9/7/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import Foundation

typealias JSONObject = [String: Any]

enum JSONError: Error {
    case keyMismatch(String)
    case typeMismatch(String)
}

protocol ValueTypeTransform {

}

protocol ReferenceTypeTransform {
    init?(class: AnyClass)
}

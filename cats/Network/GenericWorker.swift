//
//  GenericWorker.swift
//  cats
//
//  Created by Gabriel Duarte on 07/01/21.
//

import Foundation

enum Method:String{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}
class GenericWorker {

    typealias completion <T> = (_ result: T, _ failure: ErrorHandler?) -> Void
}

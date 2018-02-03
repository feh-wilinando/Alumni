//
//  Router.swift
//  Alumni
//
//  Created by Nando on 03/02/18.
//  Copyright © 2018 Nando. All rights reserved.
//

import UIKit

typealias RouteInfo = (segueIdentifier: String, extra: Any?)

protocol Router {
    var info: RouteInfo {get}
}

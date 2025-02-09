//
//  AutomaticRegistration.swift
//  FactoryDemo
//
//  Created by Michael Long on 11/26/22.
//

import Foundation
import Factory

extension Container: AutoRegistering {

    static let autoRegisteredService = Factory<MyServiceType?> {
        nil
    }

    public static func registerAllServices() {
        print("AUTOREGISTRATION!!!")
        autoRegisteredService.register {
            MyService()
        }
    }

}

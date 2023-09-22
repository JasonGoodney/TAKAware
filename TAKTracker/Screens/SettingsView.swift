//
//  SettingsView.swift
//  TAKTracker
//
//  Created by Cory Foy on 7/13/23.
//

import Foundation
import MapKit
import SwiftTAK
import SwiftUI

struct SettingsView: View {
    @StateObject var settingsStore: SettingsStore = SettingsStore.global

    var body: some View {
        List {
            UserInformation()
            ServerInformation()
            ConnectionOptions()
            DeviceOptions()
            AdvancedModeToggle()
            
            if(settingsStore.enableAdvancedMode) {
                MapOptions()
                TAKOptions()
            }
            AboutInformation()
        }
        .padding([.leading, .trailing], 12)
    }
}

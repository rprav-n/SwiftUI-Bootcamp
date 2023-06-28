//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 28/06/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert = false
    @State var bg = Color.yellow
    
//    @State var alertTitle = ""
//    @State var alertMessage = ""
    
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case warning
        case error
    }
    
    var body: some View {
        ZStack {
            
            bg.ignoresSafeArea(.all)
            
            VStack(spacing: 20) {
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "Error Uploading Video"
                    //alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Click Here") {
                    alertType = .success
                    //alertTitle = "Successfully Uploading Video 🥳"
                    //alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                //Alert(title: Text("There was an error"))
                //            Alert(title: Text("404"),
                //                  message: Text("Page not found"),
                //                  dismissButton:
                //                    //.cancel(Text("Cancel"))
                //                .default(Text("Ohh"))
                
                getAlert()
                
        }
        }
    }
    
    func getAlert() -> Alert {
        var title = ""
        var message = ""
        switch alertType {
        case .error:
            title = "Error Uploading Video.."
            message = "The video could not be uploaded"
        case .success:
            title = "Successfully Uploading Video 🥳"
            message = "Your video is now public"
        case .warning:
            break
        case .none:
            break
        }
        
//        return Alert(title: Text("This is the title"),
//                     message: Text("Here goes the error description"),
//                     primaryButton: .destructive(Text("Delete"), action: {
//                       bg = .red
//                       }),
//                     secondaryButton: .cancel())
        
        return Alert(
            title: Text(title),
            message: Text(message),
            dismissButton: .default(Text("OK")))
        
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}

//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Praveen R on 29/06/23.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showSheet = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
//        Button("Click me") {
//            showSheet.toggle()
//        }
//        .actionSheet(isPresented: $showSheet) {
//            ActionSheet(title: Text("Hello"), message: Text("This is a message"))
//        }
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }
                
            }
            .padding(.horizontal)
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel(Text("Cancel"))
//
//        return ActionSheet(
//            title: Text("Title"),
//            message: Text("Here goes the message"),
//            buttons: [button1, button2, button3]
//        )
        
        let shareButton: ActionSheet.Button = .default(Text("Share"))
        let reportButton: ActionSheet.Button = .destructive(Text("Report"))
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete"))
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title = Text("What would you like to do?")
        
        var buttons: [ActionSheet.Button] = []
        
        switch actionSheetOption {
        case .isMyPost:
            buttons = [shareButton, deleteButton, cancelButton]
        case .isOtherPost:
            buttons = [shareButton, reportButton, cancelButton]
        }
        
        return ActionSheet(title: Text("What would you like to do?"), buttons: buttons)
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}

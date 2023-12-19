

import SwiftUI

struct LogInView: View {
    @Binding var username :String
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Image("blue")
                .resizable()
                .frame(width: 65,height:65)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            Text("Birdy")
                .font(.title)
            TextField ("username",text : $username)
                .padding(.leading,100)
                .padding(.trailing,100)
                .multilineTextAlignment(.center)
                .textFieldStyle(.roundedBorder)
            
            Button(action:{
                isPresented=false
            }) {
                Text("Log in")
                    .foregroundColor(.black)
            }
            .frame(width: 75,height:30)
            .background(Color.blue.opacity(0.5))
            .cornerRadius(18.0)
            .disabled(username.isEmpty)
        }
    }
}

#Preview {
    LogInView(username: Binding.constant(""), isPresented: Binding.constant(false))
}

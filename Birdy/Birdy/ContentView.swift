//
//  ContentView.swift
//  Birdy
//
//  Created by student on 13.12.2023..
//



import SwiftUI
struct Tweet{
    let username:String
    var content:String
    let date:Date
}

struct ContentView: View {
    
    var tweet: Tweet=Tweet(username:"karlolac", content:"The Earth is flat.",date:Date())
    
    var body: some View {
        VStack {
            HStack{
                Text("Birdy")
                    .font(.title)
                Spacer()

                Button(action: {} ){
                    Text("Log in")
                }
                }
            
           // Text("Today is my birthday")
            //Text("This is Twitter")
            //Text("The Earth is flat")
            HStack{
                Image("Image")
                    .resizable()
                    .frame(width: 65,height:65)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Spacer()
                VStack{
                    Text(tweet.username)

                    Text(tweet.date, style: .relative)
                    Text(tweet.content)
                    
                }
                
                
                
            }
            .padding(.leading)
            Spacer()
        }
        .padding()
       
    }
}
#Preview {
        ContentView()
    }


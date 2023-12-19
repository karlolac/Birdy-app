import SwiftUI
struct Tweet: Identifiable{
    var id = UUID()
    let username:String
    var content:String
    let date:Date=Date()
    var isFavourite: Bool
}

struct ContentView: View {
    
    @State var tweets:[Tweet]=[
        Tweet(
            username:"karlolac",
            content:"The Earth is flat.",
            isFavourite:true
        ),
        
        Tweet(
            username:"sale123",
            content:"The Earth is round.",
            isFavourite:true
        ),
        
        Tweet(
            username:"luka321",
            content:"The Earth is square.",
            isFavourite:true
        )
        
    ]
    @State var content: String = " "
    
    @State var isPresented:Bool =  false
     
    @State var username:String = " "
    
    var body: some View {
        VStack {
            HStack{
                Text("Birdy")
                    .font(.title)
                Spacer()
                if username.isEmpty{
                    Button(action: {isPresented=true
                    } ){
                        Text("Log in")
                    }
                }
                else{
                    Button(action: {username=""
                    } ){
                        Text("Log out")
                    }
                }
            }
            
            List($tweets){tweet in
                TweetRow(tweet:tweet)
            }
            .listStyle(.plain)
            
            Spacer()
            if !username.isEmpty{
                HStack{
                    TextField("Content",text:$content)
                    Button (action:{
                        tweets.append(
                            Tweet(  username: username,
                                    content: content,
                                    isFavourite: false))
                        content=""
                            })
                        {
                        Text("New tweet")
                    }
                        .disabled(content.isEmpty )
                }
                
                
            }
            
           
            
        }
        .padding()
        .sheet(isPresented:$isPresented){
            LogInView(username: $username, isPresented: $isPresented)
        }
    }
}

#Preview {
        ContentView()
    }


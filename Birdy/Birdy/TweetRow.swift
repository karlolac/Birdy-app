import SwiftUI

struct TweetRow: View {
    
    @Binding var tweet: Tweet
   
    var body: some View {
        HStack{
            Image("Image")
                .resizable()
                .frame(width: 65,height:65)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack{
                Text(tweet.username)
                    .foregroundColor(.gray)
                Text(tweet.content)

                Text(tweet.date, style: .relative)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            Button(action:{tweet.isFavourite.toggle()}){
                if tweet.isFavourite{Image(systemName:"heart.fill")
                        .foregroundColor(.red)
                }
                else{
                    Image(systemName: "heart")
                        .foregroundColor(.red)
                }
            }

        }
        .padding(.leading)
    }
}


#Preview {
    TweetRow(tweet:
                Binding.constant(Tweet(username:"karlo",content:"ferit",isFavourite:true)))
}

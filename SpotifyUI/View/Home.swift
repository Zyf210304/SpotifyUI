//
//  Home.swift
//  SpotifyUI
//
//  Created by 张亚飞 on 2021/6/9.
//

import SwiftUI

struct Home: View {
    
    @State var selectedTab = "house.fill"
    
    var body: some View {
    
        
        HStack(spacing: 0) {
            
            
            // Side Tab Bar
            VStack {
                
                Image("spotify")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 35, height: 35)
                
               
                VStack {
                    
                    TabButton(image: "house.fill", selectedTab: $selectedTab)
                    
                    TabButton(image: "safari.fill", selectedTab: $selectedTab)
                    
                    TabButton(image: "mic.fill", selectedTab: $selectedTab)
                    
                    TabButton(image: "clock.fill", selectedTab: $selectedTab)
                }
                // setting the tabs for half of the height so that remaining elements will get space...
                .frame(height: getRect().height / 2.3)
                .padding(.top)
                
                Spacer(minLength: 50)
                
                Button(action: {}, label: {
                    Image(systemName: "speaker.wave.2.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "speaker.wave.1.fill")
                        .font(.title2)
                        .foregroundColor(.white)
                })
                
                Button(action: {}, label: {
                    Image(systemName: "chevron.left")
                        .font(.title2)
                        .foregroundColor(.white)
                })
                
            }
            //Max side tab bar width
            .frame(width: 80)
            .background(Color.black.ignoresSafeArea())
            
            // Main content...
            ScrollView(showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                
            })
            .background(Color("bg").ignoresSafeArea())
            
        }
        
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


// Tab Button...
struct TabButton: View {
    
    var image: String
    @Binding var selectedTab: String
    
    var body: some View {
        
        Button(action: {
            withAnimation{selectedTab = image}
        }, label: {
            Image(systemName: image)
                .font(.title)
                .foregroundColor(selectedTab == image ? .white : Color.gray.opacity(0.6))
                .frame(maxHeight: .infinity)
        })
    }
}



extension View {
    
    func getRect() -> CGRect {
        
        return UIScreen.main.bounds
    }
}

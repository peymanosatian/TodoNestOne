import SwiftUI

struct OnboardingIntro: View {
    @State private var navigateToNextPage = false

    var body: some View {
        NavigationStack {
            ZStack {
                // IMAGE BACKGROUND
                Image("OnboardingBackGround")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                
                // LOGO AND NAME
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    TextEffect(text: "TodoNest")
                        .font(Font.custom("Merriweather-Regular", size: 32))
                        .foregroundColor(Color("purple1"))
                        .shadow(radius: 2)
                } // VSTACK
            } // ZSTACK
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    navigateToNextPage = true
                }
            }
            .navigationDestination(isPresented: $navigateToNextPage) {
                OnboardingInfo()
            }
        }
    }
}

#Preview {
    OnboardingIntro()
}

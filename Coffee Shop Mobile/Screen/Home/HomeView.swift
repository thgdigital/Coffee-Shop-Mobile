
import SwiftUI

struct HomeView: View {
    var body: some View {
            ZStack {
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: DS.Spacing.xl) {
                        HomeSectionHeaderView()
                        CarouselButtonSection()
                    }
                    .background(Color.white)
                    .padding(.top, .zero)
                }.ignoresSafeArea(edges: .top)
            }
        }
}


import SwiftUI

struct HomeView: View {
    var body: some View {
            ZStack {
    
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        HomeSectionHeaderView()
                    }
                    .background(Color.white)
                    .padding(.top, 0)
                }.ignoresSafeArea(edges: .top)
            }
        }
}


import SwiftUI

struct HomeView: View {
    
    let coffees = [
        Coffee(image: "coffe-xicara", title: "Cappuccino", subtitle: "With oat milk", price: 4.99),
        Coffee(image: "coffe-xicara", title: "Latte", subtitle: "Creamy milk", price: 3.99),
        Coffee(image: "coffe-xicara", title: "Mocha", subtitle: "Chocolate", price: 5.49),
        Coffee(image: "coffe-xicara", title: "Cappuccino", subtitle: "With oat milk", price: 4.99),
        Coffee(image: "coffe-xicara", title: "Latte", subtitle: "Creamy milk", price: 3.99),
        Coffee(image: "coffe-xicara", title: "Mocha", subtitle: "Chocolate", price: 5.49)
    ]
    
    var body: some View {
        ZStack {
            
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: DS.Spacing.xl) {
                    HomeSectionHeaderView()
                    CarouselButtonSection()
                    HomeCoffeeGridSection(coffees: coffees)
                        .padding(.bottom, DS.Spacing.xl)
                }
                .background(Color.white)
                .padding(.top, .zero)
            }.ignoresSafeArea(edges: .top)
        }
    }
}

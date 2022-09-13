import SwiftUI

struct PaysTabView: View {
    @StateObject var paysVM = PaysViewModel()
    
    var body: some View {
        NavigationBarWrapperView(title: "Transactions") {
            List(pays, id: \.date) { payInDay in
                Section(header: Text(formatter.string(from: payInDay.date))) {
                    ForEach(payInDay.items) { pay in
                        PayRowView(pay: pay)
                    }
                }
            }.task {
                await paysVM.loadPays()
            }
        }
    }
    
    private var formatter: DateFormatter {
        let fmt = DateFormatter()
        fmt.dateStyle = .medium
        fmt.doesRelativeDateFormatting = true
        return fmt
    }
    
    private var pays: [Pays] {
        if case let .success(pays) = paysVM.phase {
            return pays
        }
        
        return []
    }
}

struct PaysTabView_Previews: PreviewProvider {
    static var previews: some View {
        PaysTabView()
    }
}

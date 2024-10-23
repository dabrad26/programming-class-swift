//
//  ContentView.swift
//  Assignment2-1
//
//  Created by David Bradshaw on 10/1/24.
//

import Charts
import SwiftUI

let chartData = [
    ProductItem(
        name: "Console Gaming", revenue: 56_100_000_000, color: .orange),
    ProductItem(name: "Mobile Gaming", revenue: 92_600_000_000, color: .blue),
    ProductItem(name: "PC Gaming", revenue: 37_100_000_000, color: .red),
]

struct ContentView: View {
    var body: some View {
        VStack {
            Text("2023 Game Market Revenue")
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.all, 24)
            Spacer()
            Chart {
                ForEach(chartData) { item in
                    BarMark(
                        x: .value("Market", item.name),
                        y: .value("Revenue", item.revenue)
                    )
                    .foregroundStyle(item.color)
                }

            }
            .padding([.leading, .bottom, .trailing], 24)
            .chartYAxis {
                AxisMarks(
                    format: Decimal.FormatStyle.number.notation(.compactName)
                )
            }
        }
    }
}

#Preview {
    ContentView()
}

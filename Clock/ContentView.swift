//
//  clock.swift
//  Yelm.ProjectAcies
//
//  Created by Michael Safir on 25.04.2021.
//

import Foundation
import SwiftUI
import Combine

struct ClockTickerModel {
    enum TickerType {
        case second
        case hour
        case minute
    }
    let type: TickerType
    let timeInterval: TimeInterval
    let tickScale: CGFloat
    
    var angleMultiplier: CGFloat {
        switch type {
        case .second:
            return CGFloat(self.timeInterval.remainder(dividingBy: 60)) / 60
        case .hour:
            return CGFloat(timeInterval / 3600) / 12
        case .minute:
            return CGFloat((timeInterval - Double(Int(timeInterval / 3600) * 3600)) / 60) / 60
        }
    }
    
    var tickerScale: CGFloat {
        switch type {
        case .second:
            return 0.8
        case .hour:
            return 0.4
        case .minute:
            return 0.6
        }
    }
}



final class CurrentTime: ObservableObject {
    @Published var seconds: TimeInterval = CurrentTime.currentSecond(date: Date())

    private let timer = Timer.publish(every: 0.2, on: .main, in: .default).autoconnect()
    private var store = Set<AnyCancellable>()

    init() {
        timer.map(Self.currentSecond).assign(to: \.seconds, on: self).store(in: &store)
    }

    private static func currentSecond(date: Date) -> TimeInterval {
        let components = Calendar.current.dateComponents([.year, .month, .day], from: date)
        let referenceDate = Calendar.current.date(from: DateComponents(year: components.year!, month: components.month!, day: components.day!))!
        return Date().timeIntervalSince(referenceDate)
    }
}
struct ContentView: View {
    @ObservedObject var time = CurrentTime()
    
    
    func tick(at tick: Int) -> some View {
               VStack {
                   Rectangle()
                       .fill(Color.primary)
                       .opacity(tick % 5 == 0 ? 1 : 0.4)
                       .frame(width: 2, height: tick % 5 == 0 ? 15 : 7)
                   Spacer()
           }.rotationEffect(Angle.degrees(Double(tick)/(60) * 360))
    }
    
    var body: some View {
        
         HStack(alignment: .center) {
            
            Text(String(Calendar.current.component(.hour, from: Date())).count < 2 ? "0\(Calendar.current.component(.hour, from: Date()))" : "\(Calendar.current.component(.hour, from: Date()))")
                .tracking(1.5)
            Text(":")
            Text(String(Calendar.current.component(.minute, from: Date())).count < 2 ? "0\(Calendar.current.component(.minute, from: Date()))" : "\(Calendar.current.component(.minute, from: Date()))")
                .tracking(1.5)
            Text(":")
            Text(String(Calendar.current.component(.second, from: Date())).count < 2 ? "0\(Calendar.current.component(.second, from: Date()))" : "\(Calendar.current.component(.second, from: Date()))")
                .tracking(1.5)
            
         }
         .frame(width: UIScreen.main.bounds.width,
                height: UIScreen.main.bounds.height)
         .background(Color.black)
         .font(.custom("Graphik-Regular", size: 150))
         .foregroundColor(Color.white)
         .ignoresSafeArea()
         .preferredColorScheme(.dark)
       
    }
    
}


//
//  ContentView.swift
//  RubbishProject
//
//  Created by Nikita Kotlyarevskiy on 10.11.2023.
// https://youtube.com/live/5QqEjZE7iZ4?feature=share

import SwiftUI

class Frame: ObservableObject {
    @Published var x = CGFloat()
    @Published var y = CGFloat()
    var width = CGFloat()
    var height = CGFloat()
}

enum GameState {
    case active, stopped
}

struct ContentView: View {
    @State var isDrugging = false
    @State var gameState: GameState = .active
    
    @State private var bottlePossition = CGPoint(x: 65, y: 320)
    @State private var paperPossition = CGPoint(x: 195, y: 320)
    @State private var cupPossition = CGPoint(x: 325, y: 320)
    @State private var jarPossition = CGPoint(x: 65, y: 450)
    @State private var bookPossition = CGPoint(x: 195, y: 450)
    @State private var packagePossition = CGPoint(x: 325, y: 450)
    @State private var canPossition = CGPoint(x: 65, y: 580)
    @State private var bananaPossition = CGPoint(x: 195, y: 580)
    @State private var bearPossition = CGPoint(x: 325, y: 580)
    @State private var sodaPossition = CGPoint(x: 65, y: 710)
    @State private var orangePossition = CGPoint(x: 195, y: 710)
    @State private var trousersPossition = CGPoint(x: 325, y: 710)
    
    @StateObject private var bottleFrame = Frame()
    @StateObject private var paperFrame = Frame()
    @StateObject private var cupFrame = Frame()
    @StateObject private var jarFrame = Frame()
    @StateObject private var bookFrame = Frame()
    @StateObject private var packageFrame = Frame()
    @StateObject private var canFrame = Frame()
    @StateObject private var bananaFrame = Frame()
    @StateObject private var bearFrame = Frame()
    @StateObject private var sodaFrame = Frame()
    @StateObject private var orangeFrame = Frame()
    @StateObject private var trousersFrame = Frame()
    
    let rubbishSize: CGFloat = 117
    
    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                
                ZStack {
                    
                    // Мусорки
                    
                    FirstTrashCan(trashCanSize: 180, rubbishType: "Mixed")
                        .position(CGPoint(x: 65, y: 120))
                    let firstTrashCanFrame = CGRect(
                        x: 65, y: 120, width: 10, height: 10)
                    
                    SecondTrashCan(trashCanSize: 180, rubbishType: "Glass")
                        .position(CGPoint(x: 195, y: 120))
                    let secoundTrashCanFrame = CGRect(
                        x: 195, y: 120, width: 10, height: 10)
                    
                    ThirdTrashCan(trashCanSize: 180, rubbishType: "Metal")
                        .position(CGPoint(x: 325, y: 120))
                    let thirdTrashCanFrame = CGRect(
                        x: 325, y: 120, width: 10, height: 10)
                    
                    
                    // Мусор
                    
                    BottleIView(bottleSize: rubbishSize, rubbishType: "Glass")
                        .position(bottlePossition)
                        let bottleFrame = CGRect(
                            x: translation.value.bottlePossition.x,
                        y: bottlePossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    PaperView(paperSize: rubbishSize, rubbishType: "Mixed")
                        .position(paperPossition)
                    let paperFrame = CGRect(
                        x: paperPossition.x,
                        y: paperPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    CupView(cupSize: rubbishSize, rubbishType: "Mixed")
                        .position(cupPossition)
                    let cupFrame = CGRect(
                        x: cupPossition.x,
                        y: cupPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    JarView(jarSize: rubbishSize, rubbishType: "Glass")
                        .position(jarPossition)
                    let jarFrame = CGRect(
                        x: jarPossition.x,
                        y: jarPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    BookView(bookSize: rubbishSize, rubbishType: "Mixed")
                        .position(bookPossition)
                    let bookFrame = CGRect(
                        x: bookPossition.x,
                        y: bookPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    PackageView(packageSize: rubbishSize, rubbishType: "Mixed")
                        .position(packagePossition)
                    let packageFrame = CGRect(
                        x: packagePossition.x,
                        y: packagePossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    CanView(canSize: rubbishSize, rubbishType: "Metal")
                        .position(canPossition)
                    let canFrame = CGRect(
                        x: canPossition.x,
                        y: canPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    BananaView(bananaSize: rubbishSize, rubbishType: "Mixed")
                        .position(bananaPossition)
                    let bananaFrame = CGRect(
                        x: bananaPossition.x,
                        y: bananaPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    BearView(bearSize: rubbishSize, rubbishType: "Mixed")
                        .position(bearPossition)
                    let bearFrame = CGRect(
                        x: bearPossition.x,
                        y: bearPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    SodaView(sodaSize: rubbishSize, rubbishType: "Metal")
                        .position(sodaPossition)
                    let sodaFrame = CGRect(
                        x: sodaPossition.x,
                        y: sodaPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    OrangeView(orangeSize: rubbishSize, rubbishType: "Mixed")
                        .position(orangePossition)
                    let orangeFrame = CGRect(
                        x: orangePossition.x,
                        y: orangePossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    TrousersView(trousersSize: rubbishSize, rubbishType: "Mixed")
                        .position(trousersPossition)
                    let trousersFrame = CGRect(
                        x: trousersPossition.x,
                        y: trousersPossition.y,
                        width: rubbishSize,
                        height: rubbishSize)
                    
                    // Логика
                    
                    if firstBottleCollisions(geometry: geometry) {
                        ResultView() {
                            resetGame()
                        }
                    }
                    
                    
                    
                    
                    
                    
                    if gameState == .stopped {
                        ResultView() {
                            resetGame()
                        }
                    }
                }
    
            }
        }
    }
    
    func firstBottleCollisions(geometry: GeometryProxy) -> Bool {
        let firstTrashCanFrame = CGRect(
            x: 65, y: 120, width: 10, height: 10)
        
        let bottleFrame = CGRect(
            x: bottlePossition.x,
            y: bottlePossition.y,
            width: rubbishSize,
            height: rubbishSize)
        
        return bottleFrame.intersects(firstTrashCanFrame)
    }
    
        func resetGame() {
        gameState = .active
    }
    
    
}

#Preview {
    ContentView()
}

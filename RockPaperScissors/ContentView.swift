//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Henrieke Baunack on 10/18/23.
//

// need to reset the state and reshuffle
// should prbly add an alarm showing the score and the reshuffle
// should show alarm after 10 rounds to show final score

import SwiftUI

struct ContentView: View {
    let possibleMoves = ["Rock", "Paper", "Scissors"]
//    @State var chosenMove = Int.random(in: 0...2)
    @State var chosenMove = 0
//    @State var userShouldWin = Bool.random()
    @State var userShouldWin = true
    @State var score = 0
    
    func evaluateSelection(selection: String) -> Void {
        print("in function: \(selection) was selected")
        if userShouldWin && possibleMoves[chosenMove] == "Rock" {
            switch selection {
            case "Rock":
                score -= 1
            case "Paper":
                score += 1
            case "Scissors":
                score -= 1
            default:
                score += 0
            }
        }
        else if userShouldWin && possibleMoves[chosenMove] == "Paper" {
            switch selection {
            case "Rock":
                score -= 1
            case "Paper":
                score -= 1
            case "Scissors":
                score += 1
            default:
                score += 0
            }
        }
        else if userShouldWin && possibleMoves[chosenMove] == "Scissors" {
            switch selection {
            case "Rock":
                score += 1
            case "Paper":
                score -= 1
            case "Scissors":
                score -= 1
            default:
                score += 0
            }
        }
        else if !userShouldWin && possibleMoves[chosenMove] == "Rock" {
            switch selection {
            case "Rock":
                score -= 1
            case "Paper":
                score -= 1
            case "Scissors":
                score += 1
            default:
                score += 0
            }
        }
        else if !userShouldWin && possibleMoves[chosenMove] == "Paper" {
            switch selection {
            case "Rock":
                score += 1
            case "Paper":
                score -= 1
            case "Scissors":
                score -= 1
            default:
                score += 0
            }
        }
        else if !userShouldWin && possibleMoves[chosenMove] == "Scissors" {
            switch selection {
            case "Rock":
                score -= 1
            case "Paper":
                score += 1
            case "Scissors":
                score -= 1
            default:
                score += 0
            }
        }
    }
    
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Text("Score: " + String(score))
            HStack{
                Text("The app chose:")
                Text("\(possibleMoves[chosenMove])").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Text(userShouldWin ? "Try to win" : "Try to loose").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Text("Choose your move below:")
            Spacer()
            HStack{
                Button {
                    evaluateSelection(selection: "Rock")
                } label: {
                    Label("Rock", systemImage: "circle.fill")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.mint)
                }
                Button {
                    evaluateSelection(selection: "Paper")
                } label: {
                    Label("Paper", systemImage: "newspaper")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.mint)
                }
                Button {
                    evaluateSelection(selection: "Scissors")
                } label: {
                    Label("Scissors", systemImage: "scissors")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.mint)
                }

            }
                        
            Spacer()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

//
//  BookSummaryView.swift
//  Eventify
//
//  Created by Rania on 18/06/1445 AH.
//

import SwiftUI

struct BookSummaryView: View {
    @State private var showsheet: Bool = false
    @State private var showTicketView = false
    //let vipQuantity: Int
    //let regularQuantity: Int
    
    var body: some View {
        
            VStack(alignment: .leading ,spacing: 20){
                
                Text("Booking Summary")
                    .fontWeight(.bold)
                Text("22 Dec 2023")
                HStack{Text("1 X vip Lane")
                    Spacer()
                    Text("100 ASR")
                }
                Divider()
                    .overlay(Color.black)
                
                HStack{Text("total")
                        .fontWeight(.bold)
                    Spacer()
                    Text("100")
                        .fontWeight(.bold)
                }
                Text("Payment Methods")
                    .fontWeight(.bold)
                HStack{
                    Button(action: {
                    }) {
                        Image("Pay")
                            .resizable()
                            .frame(width: 60, height: 24)
                            .padding(10)
                            .accentColor(.dark)
                            .background(Color(.light))
                            .cornerRadius(18)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.light, lineWidth: 2))
                    }
                    Button(action: {
                    }) {
                        Image("Mada")
                            .resizable()
                            .frame(width: 60, height: 24)
                            .padding(10)
                            .accentColor(.dark)
                            .cornerRadius(18)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.light, lineWidth: 2))
                    }
                }
                Spacer()
                NavigationLink(destination: TicketView(), isActive: $showTicketView) {
                                    EmptyView()
                                }
                                .isDetailLink(false)

                                Button {
                                    showsheet.toggle()
                                } label: {
                                    Spacer()
                                    Text("Proceed to payment")
                                    Spacer()
                                }
                                .buttonStyle(.bordered)
                                .controlSize(.large)
                                .background(Color("Dark"))
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .padding()
                                .sheet(isPresented: $showsheet) {
                                    PaymentView(showTicketView: $showTicketView)
                                        .presentationDetents([.height(450)])

                                }
                            
            }.padding()
            }
        }
    



#Preview {
    BookSummaryView()
}

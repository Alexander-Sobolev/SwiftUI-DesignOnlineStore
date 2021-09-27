//
//  ContentView.swift
//  SwiftUI-DesignOnlineStore
//
//  Created by Alexander Sobolev on 27.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var showOne = true
    @State var showTwo = false
    @State var showTop = false
    @State var showDetail = false
    
    var body: some View {
        ZStack {
            
            Color(showDetail ? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1) : #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                Image("LogoNike")
                    .padding()
                
                Spacer()
                
                HStack(alignment: .top, spacing: 45) {
                    
                    Button(action: {
                        self.showTop.toggle()
                    }) {
                        VStack {
                            Text("Hot")
                                .foregroundColor(showTop ? Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)) : Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            
                            
                            RoundedRectangle(cornerRadius: 23)
                                .frame(width: 33, height: 5)
                                .offset(y: -10)
                                .foregroundColor(showTop ? Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)) : Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                        }
                    }
                    
                    Button(action: {
                        //
                    }) {
                        Text("Selling")
                    }
                    
                    Button(action: {
                        //
                    }) {
                        Text("Sale")
                    }
                    
                }.foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .onAppear {
                        self.showTop = true
                }
                
                Spacer()
                
                ZStack {
                    Spacer()
                        .frame(width: 270.0, height: 365.0)
                        .background(showDetail ? Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)) : Color(#colorLiteral(red: 0.9486319752, green: 0.9474609965, blue: 0.9505480737, alpha: 1)))
                        .cornerRadius(40)
                        .shadow(radius: 35, y: 20)
                        .rotationEffect(.degrees(8))
                        .offset(x: 30, y: -30)
                        .padding(.top, 50)
                    
                    Spacer()
                        .frame(width: 270.0, height: 365.0)
                        .background(showDetail ? Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)) : Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                        .cornerRadius(40)
                        .shadow(radius: 5)
                        .rotationEffect(.degrees(-8))
                        .offset(x: -30, y: -30)
                        .padding(.top, 50)
                    
                    ZStack {
                        
                        Spacer()
                            .frame(width: 270.0, height: 365.0)
                            .background(showDetail ? Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)) : Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                            .cornerRadius(40)
                            .shadow(radius: 5)
                        
                        VStack {
                            if showOne == true {
                                Image("NikeAirZoomPerasusForTitle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 260.0, height: 365.0)
                                    .offset(y: 40)
                                    .overlay(showDetail ? Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(0.3) : Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)).opacity(0))
                                Text("Nike Air Zoom Pegasus")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .bold()
                                    .offset(y: -100)
                            } else if showTwo == true {
                                Image("NikeAirMax+ForTitle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 260.0, height: 365.0)
                                    .overlay(showDetail ? Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)).opacity(0.3) : Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)).opacity(0))
                                Text("Nike Air Max +")
                                    .foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
                                    .bold()
                                    .offset(y: -100)
                            }
                        }
                    }
                }
                
                Spacer()
                
                Button(action: {
                    self.showDetail.toggle()
                }) {
                    Text("Buy Now")
                        .foregroundColor(.white)
                        .frame(width: 180, height: 50)
                        .background(Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)))
                        .cornerRadius(20)
                        .shadow(color: Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)).opacity(0.5), radius: 10, y: 10)
                        .padding()
                }
                
                HStack {
                    Text("Favorites")
                        .font(.system(size: 17))
                        .bold()
                        .padding(.leading)
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 35) {
                        Button(action: {
                            self.showOne.toggle()
                            self.showTwo = false
                        }) {
                            Image("NikeAirZoomPerasusButton")
                                .renderingMode(.original)
                                .overlay(showOne ? RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)), lineWidth: 3) : nil)
                        }
                        
                        Button(action: {
                            self.showTwo.toggle()
                            self.showOne = false
                        }) {
                            Image("NikeAirMax+Button")
                                .renderingMode(.original)
                                .overlay(showTwo ? RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)), lineWidth: 3) : nil)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Image("NikeButtonRandom")
                                .renderingMode(.original)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Image("NikeButtonRandom")
                                .renderingMode(.original)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                }
            }
            
            DetailView(showDetail: $showDetail)
                .offset(y: showDetail ? 0 : 600)
                .animation(.spring(response: 0.8, dampingFraction: 0.5, blendDuration: 0))
        }
    }
}

struct DetailView: View {
    
    @Binding var showDetail: Bool
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack(alignment: .top) {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Man's Shoe")
                                .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                            Text("Nike Airmax +")
                                .bold()
                        }
                        Spacer()
                        Text("500$")
                            .bold()
                            .font(.system(size: 25))
                    }
                    .padding(.horizontal)
                    Text("Select Size")
                        .font(.caption)
                        .padding(.horizontal)
                    
                    VStack(alignment: .center, spacing: 8.0) {
                        
                        HStack(alignment: .center, spacing: 8.0) {
                            Text("UK 5.5")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                            Text("UK 6 (EU 39)")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                            Text("UK 6 (EU 40)")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                        }
                        
                        HStack(alignment: .center, spacing: 8.0) {
                            Text("UK 6.5")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                            Text("UK 7")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                            Text("UK 7.5")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                                .opacity(0.3)
                        }
                        
                        HStack(alignment: .center, spacing: 8.0) {
                            Text("UK 5.5")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                            Text("UK 6 (EU 39)")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                                .opacity(0.3)
                            Text("UK 6 (EU 40)")
                                .font(.footnote)
                                .frame(width: 100, height: 40)
                                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)))
                                .cornerRadius(10)
                        }
                    }
                    .padding(.leading, 30)
                    
                    Button(action: {
                        //
                    }) {
                        Text("Add to bag")
                            .foregroundColor(.white)
                            .frame(width: 330, height: 50)
                            .background(Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)))
                            .cornerRadius(20)
                            .shadow(color: Color(#colorLiteral(red: 1, green: 0.4784313725, blue: 0, alpha: 1)).opacity(0.5), radius: 10, y: 10)
                            .padding(.leading, 30)
                    }
                }
                .padding(.top, 10)
                .frame(width: 380, height: 400)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 20)
            }

            Image(systemName: "xmark")
                .padding(.bottom, 30)
                .frame(width: 30, height: 30)
                .foregroundColor(.black)
                .offset(x: 165, y: 35)
                .onTapGesture {
                    self.showDetail = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


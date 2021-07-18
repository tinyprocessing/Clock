//
//  Engine.swift
//  Clock
//
//  Created by Michael Safir on 12.06.2021.
//

import Foundation
import SwiftUI
import SwiftyJSON

private struct SparkStruct {
    var id = UUID()
    var view: AnyView
}

class Engine: ObservableObject, Identifiable {
    
    
    
    var id : Int = 0
    var json : String = """
           {
              "views":[
                 {
                    "view_type":"scrollview",
                    "content":[
                       {
                          "view_type":"vstack",
                          "content":[
                             {
                                "view_type":"text",
                                "content":[
                                   {
                                      "body":"Пользователи"
                                   }
                                ],
                                "parameters":{
                                   "padding":5,
                                   "foreground":"000000",
                                   "size":30,
                                   "font_weight":"bold"
                                }
                             },
                             {
                                "view_type":"hstack",
                                "content":[
                                   {
                                      "view_type":"image_url",
                                      "content":[
                                         {
                                            "body":"https://images.pexels.com/photos/6662559/pexels-photo-6662559.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                                         }
                                      ],
                                      "parameters":{
                                         "frame":{
                                            "width":50,
                                            "height":50
                                         },
                                         "content_mode":"fill",
                                         "corners":15
                                      }
                                   },
                                   {
                                      "view_type":"vstack",
                                      "content":[
                                         {
                                            "view_type":"text",
                                            "content":[
                                               {
                                                  "body":"Михаил"
                                               }
                                            ],
                                            "parameters":{
                                               "padding":5,
                                               "foreground":"000000",
                                               "size":24
                                            }
                                         },
                                         {
                                            "view_type":"text",
                                            "content":[
                                               {
                                                  "body":"23.04.1998"
                                               }
                                            ],
                                            "parameters":{
                                               "padding":5,
                                               "foreground":"A6ACAF",
                                               "size":16
                                            }
                                         }
                                      ],
                                      "parameters":{
                                         "padding":0,
                                         "spacing":5
                                      }
                                   },
                                   {
                                      "view_type":"spacer",
                                      "content":[
                                         {
                                            "min":0
                                         }
                                      ],
                                      "parameters":{
                                         
                                      }
                                   },
                                   {
                                      "view_type":"image",
                                      "content":[
                                         {
                                            "sf":"person"
                                         }
                                      ],
                                      "parameters":{
                                         "foreground":"A6ACAF",
                                         "size":24
                                      }
                                   }
                                ],
                                "parameters":{
                                   "padding":20,
                                   "background":"F7F9F9",
                                   "corners":15,
                                   "spacing":15
                                }
                             },
                             {
                                "view_type":"hstack",
                                "content":[
                                   {
                                      "view_type":"vstack",
                                      "content":[
                                         {
                                            "view_type":"text",
                                            "content":[
                                               {
                                                  "body":"Александр"
                                               }
                                            ],
                                            "parameters":{
                                               "padding":5,
                                               "foreground":"000000",
                                               "size":24
                                            }
                                         },
                                         {
                                            "view_type":"text",
                                            "content":[
                                               {
                                                  "body":"01.03.1987"
                                               }
                                            ],
                                            "parameters":{
                                               "padding":5,
                                               "foreground":"A6ACAF",
                                               "size":16
                                            }
                                         }
                                      ],
                                      "parameters":{
                                         "padding":0,
                                         "spacing":5,
                                         "alignment":"leading"
                                      }
                                   },
                                   {
                                      "view_type":"spacer",
                                      "content":[
                                         {
                                            "min":0
                                         }
                                      ],
                                      "parameters":{
                                         
                                      }
                                   },
                                   {
                                      "view_type":"image",
                                      "content":[
                                         {
                                            "sf":"person"
                                         }
                                      ],
                                      "parameters":{
                                         "foreground":"A6ACAF",
                                         "size":24
                                      }
                                   }
                                ],
                                "parameters":{
                                   "padding":20,
                                   "background":"F7F9F9",
                                   "corners":15,
                                   "spacing":5
                                }
                             },
                             {
                                "view_type":"button",
                                "content":[
                                   {
                                      "view_type":"hstack",
                                      "content":[
                                         {
                                            "view_type":"spacer",
                                            "content":[
                                               {
                                                  "min":0
                                               }
                                            ],
                                            "parameters":{
                                               
                                            }
                                         },
                                         {
                                            "view_type":"text",
                                            "content":[
                                               {
                                                  "body":"Обновить"
                                               }
                                            ],
                                            "parameters":{
                                               "padding":5,
                                               "foreground":"FFFFFF",
                                               "size":18
                                            }
                                         },
                                         {
                                            "view_type":"spacer",
                                            "content":[
                                               {
                                                  "min":0
                                               }
                                            ],
                                            "parameters":{
                                               
                                            }
                                         }
                                      ],
                                      "parameters":{
                                         "padding":0
                                      }
                                   }
                                ],
                                "parameters":{
                                   "padding":20,
                                   "background":"8E44AD",
                                   "corners":15
                                }
                             },
                             {
                                "view_type":"text",
                                "content":[
                                   {
                                      "body":"Фотографии"
                                   }
                                ],
                                "parameters":{
                                   "padding":5,
                                   "foreground":"000000",
                                   "size":24,
                                   "font_weight":"regular"
                                }
                             },
                             {
                                "view_type":"scrollview",
                                "content":[
                                   {
                                      "view_type":"hstack",
                                      "content":[
                                         {
                                            "view_type":"image_url",
                                            "content":[
                                               {
                                                  "body":"https://images.pexels.com/photos/7176281/pexels-photo-7176281.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                                               }
                                            ],
                                            "parameters":{
                                               "frame":{
                                                  "width":150,
                                                  "height":150
                                               },
                                               "content_mode":"fill",
                                               "corners":15
                                            }
                                         },
                                         {
                                            "view_type":"image_url",
                                            "content":[
                                               {
                                                  "body":"https://images.pexels.com/photos/6662592/pexels-photo-6662592.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                                               }
                                            ],
                                            "parameters":{
                                               "frame":{
                                                  "width":150,
                                                  "height":150
                                               },
                                               "content_mode":"fill",
                                               "corners":15
                                            }
                                         },
                                         {
                                            "view_type":"image_url",
                                            "content":[
                                               {
                                                  "body":"https://images.pexels.com/photos/6662556/pexels-photo-6662556.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
                                               }
                                            ],
                                            "parameters":{
                                               "frame":{
                                                  "width":150,
                                                  "height":150
                                               },
                                               "content_mode":"fill",
                                               "corners":15
                                            }
                                         }
                                      ],
                                      "parameters":{
                                         "spacing":20
                                      }
                                   }
                                ],
                                "parameters":{
                                   "alignment":"horizontal"
                                }
                             },
                             {
                                "view_type":"spacer",
                                "content":[
                                   {
                                      "min":0
                                   }
                                ],
                                "parameters":{
                                   
                                }
                             }
                          ],
                          "parameters":{
                             "padding":0,
                             "spacing":15,
                             "alignment":"leading"
                          }
                       }
                    ],
                    "parameters":{
                       "padding":20,
                       "background":"FFFFFF",
                       "spacing":15,
                       "alignment":"vertical"
                    }
                 }
              ]
           }
        """
    public func builder() -> AnyView{
    
        let json_parsed = JSON(parseJSON: self.json)
        let views = json_parsed["views"]
        let views_count = json_parsed["views"].count
        var spark : AnyView = AnyView(EmptyView())
        
        if (views_count == 0){
            return AnyView(Text("Error 1 (No Views in Builder)"))
        }
        
        for i in 0...views_count-1 {
            spark = builder_sparks(view: views[i])
        }
        
        return spark
    
        
    }
    
    public func builder_sparks(view: JSON) -> AnyView{
        let view_type = view["view_type"]
        var sparks : [SparkStruct] = []
        
        print(view_type)
        
        
        
        if (view_type == "text"){
            print("get text")
            var font_weight : Font.Weight = .regular
            if (view["parameters"]["font_weight"].string != nil){
                if (view["parameters"]["font_weight"].string! == "bold"){
                    font_weight = .bold
                }
            }
            
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            return AnyView(
                Text(view["content"][0]["body"].string!)
                    .font(.system(size: CGFloat(view["parameters"]["size"].int!)))
                    .foregroundColor(Color.init(hex: view["parameters"]["foreground"].string!))
                    .fontWeight(font_weight)
                    .padding(.bottom, padding_bottom)
                    .padding(.top, padding_top)
                    .padding(.leading, padding_left)
                    .padding(.trailing, padding_right)
            )
        }
        
        if (view_type == "image"){
           
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            return AnyView(
                Image(systemName: view["content"][0]["sf"].string!)
                    .font(.system(size: CGFloat(view["parameters"]["size"].int!)))
                    .foregroundColor(Color.init(hex: view["parameters"]["foreground"].string!))
                    .padding(.bottom, padding_bottom)
                    .padding(.top, padding_top)
                    .padding(.leading, padding_left)
                    .padding(.trailing, padding_right)
            )
        }
        
        if (view_type == "image_url"){
            print("get image")
            
            var image_style : ContentMode = .fill
            if (view["parameters"]["content_mode"].string != nil){
                if (view["parameters"]["content_mode"].string! == "fill"){
                    image_style = .fill
                }
                
                if (view["parameters"]["content_mode"].string! == "fit"){
                    image_style = .fit
                }
            }
            
            var frame_width : CGFloat = .infinity
            var frame_height : CGFloat = .infinity
            
            if (view["parameters"]["frame"]["width"].int != nil){
                frame_width = CGFloat(view["parameters"]["frame"]["width"].int!)
            }
            
            if (view["parameters"]["frame"]["height"].int != nil){
                frame_height = CGFloat(view["parameters"]["frame"]["height"].int!)
            }
            
            
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            return AnyView(
                URLImage(URL(string: view["content"][0]["body"].string!)!) { proxy in
                    proxy.image
                        .resizable()
                        .frame(width: frame_width, height: frame_height)
                        .aspectRatio(contentMode: image_style)
                        .padding(.all, view["parameters"]["padding"].int == nil ? 0 : CGFloat(view["parameters"]["padding"].int!))
                        .background(view["parameters"]["background"].string == nil ? Color.clear : Color.init(hex: view["parameters"]["background"].string!))
                        .cornerRadius(view["parameters"]["corners"].int == nil ? 0 : CGFloat(view["parameters"]["corners"].int!))

                        .padding(.bottom, padding_bottom)
                        .padding(.top, padding_top)
                        .padding(.leading, padding_left)
                        .padding(.trailing, padding_right)
                }
            )
        }
        
        if (view_type == "spacer"){
            
            return AnyView(Spacer())
        }
        
        for i in 0...view["content"].count-1 {
            let spark = builder_sparks(view: view["content"][i])
            sparks.append(SparkStruct(view: spark))
        }
        
        
        
       
        
        if (view_type == "hstack"){
            
            
            
            var alignment : VerticalAlignment = .center
            if (view["parameters"]["alignment"].string != nil){
                if (view["parameters"]["alignment"].string! == "center"){
                    alignment = .center
                }
                
                if (view["parameters"]["alignment"].string! == "top"){
                    alignment = .top
                }
                
                if (view["parameters"]["alignment"].string! == "bottom"){
                    alignment = .bottom
                }
            }
            
            
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            let tmp = AnyView(
                HStack(alignment: alignment, spacing: view["parameters"]["spacing"].int == nil ? 0 : CGFloat(view["parameters"]["spacing"].int!)){
                    ForEach(sparks, id: \.id) { anyview in
                        anyview.view
                        
                    }
                }
                    .padding(.all, view["parameters"]["padding"].int == nil ? 0 : CGFloat(view["parameters"]["padding"].int!))
                    .background(view["parameters"]["background"].string == nil ? Color.clear : Color.init(hex: view["parameters"]["background"].string!))
                    .cornerRadius(view["parameters"]["corners"].int == nil ? 0 : CGFloat(view["parameters"]["corners"].int!))
                
                    .padding(.bottom, padding_bottom)
                    .padding(.top, padding_top)
                    .padding(.leading, padding_left)
                    .padding(.trailing, padding_right)
            )
            sparks.removeAll()
            sparks.append(SparkStruct(view: tmp))
        }
        
        if (view_type == "button"){
            
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            let tmp = AnyView(
                    Button(action: {

                    }) {
                        VStack{
                            ForEach(sparks, id: \.id) { anyview in
                                anyview.view
                            }
                        }
                        .padding(.all, view["parameters"]["padding"].int == nil ? 0 : CGFloat(view["parameters"]["padding"].int!))
                        .background(view["parameters"]["background"].string == nil ? Color.clear : Color.init(hex: view["parameters"]["background"].string!))
                        .cornerRadius(view["parameters"]["corners"].int == nil ? 0 : CGFloat(view["parameters"]["corners"].int!))
                        .padding(.bottom, padding_bottom)
                        .padding(.top, padding_top)
                        .padding(.leading, padding_left)
                        .padding(.trailing, padding_right)
                    }
                    .buttonStyle(ScaleButtonStyle())
            )
            sparks.removeAll()
            sparks.append(SparkStruct(view: tmp))
            
            
        }
        
        if (view_type == "scrollview"){
            
            var alignment : Axis.Set = .horizontal
            if (view["parameters"]["alignment"].string != nil){
                if (view["parameters"]["alignment"].string! == "horizontal"){
                    alignment = .horizontal
                }
                
                if (view["parameters"]["alignment"].string! == "vertical"){
                    alignment = .vertical
                }
                
                
            }
            
            let tmp = AnyView(
                ScrollView(alignment, showsIndicators: false){
                    ForEach(sparks, id: \.id) { anyview in
                        anyview.view
                    }
                }
                .padding(.all, view["parameters"]["padding"].int == nil ? 0 : CGFloat(view["parameters"]["padding"].int!))
                .background(view["parameters"]["background"].string == nil ? Color.clear : Color.init(hex: view["parameters"]["background"].string!))
                .cornerRadius(view["parameters"]["corners"].int == nil ? 0 : CGFloat(view["parameters"]["corners"].int!))
                    
            )
            sparks.removeAll()
            sparks.append(SparkStruct(view: tmp))
            
            
        }
        
        
        if (view_type == "vstack"){
            print("building vstack")
            
            var alignment : HorizontalAlignment = .center
            if (view["parameters"]["alignment"].string != nil){
                if (view["parameters"]["alignment"].string! == "center"){
                    alignment = .center
                }
                
                if (view["parameters"]["alignment"].string! == "leading"){
                    alignment = .leading
                }
                
                if (view["parameters"]["alignment"].string! == "trailing"){
                    alignment = .trailing
                }
            }
            
//            paddings
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            let tmp = AnyView(
                VStack(alignment: alignment, spacing: view["parameters"]["spacing"].int == nil ? 0 : CGFloat(view["parameters"]["spacing"].int!)){
                    ForEach(sparks, id: \.id) { anyview in
                        anyview.view
                    }
                }
//                styles
                    .padding(.all, view["parameters"]["padding"].int == nil ? 0 : CGFloat(view["parameters"]["padding"].int!))
                    .background(view["parameters"]["background"].string == nil ? Color.clear : Color.init(hex: view["parameters"]["background"].string!))
                    .cornerRadius(view["parameters"]["corners"].int == nil ? 0 : CGFloat(view["parameters"]["corners"].int!))
//                paddings
                    .padding(.bottom, padding_bottom)
                    .padding(.top, padding_top)
                    .padding(.leading, padding_left)
                    .padding(.trailing, padding_right)
                    
            )
            sparks.removeAll()
            sparks.append(SparkStruct(view: tmp))
        }
        
        if (view_type == "zstack"){
            
            
            var alignment : Alignment = .center
            if (view["parameters"]["alignment"].string != nil){
                if (view["parameters"]["alignment"].string! == "center"){
                    alignment = .center
                }
                
                if (view["parameters"]["alignment"].string! == "leading"){
                    alignment = .leading
                }
                
                if (view["parameters"]["alignment"].string! == "trailing"){
                    alignment = .trailing
                }
                
                if (view["parameters"]["alignment"].string! == "bottomleading"){
                    alignment = .bottomLeading
                }
                
                if (view["parameters"]["alignment"].string! == "bottomtrailing"){
                    alignment = .bottomTrailing
                }
                
                if (view["parameters"]["alignment"].string! == "topleading"){
                    alignment = .topLeading
                }
                
                if (view["parameters"]["alignment"].string! == "toptrailing"){
                    alignment = .topTrailing
                }
                
                if (view["parameters"]["alignment"].string! == "top"){
                    alignment = .top
                }
                
                if (view["parameters"]["alignment"].string! == "bottom"){
                    alignment = .bottom
                }
            }
            
            var padding_left : CGFloat = 0
            var padding_right : CGFloat = 0
            var padding_top : CGFloat = 0
            var padding_bottom : CGFloat = 0
            if (view["parameters"]["padding_left"].int != nil){
                padding_left = CGFloat(view["parameters"]["padding_left"].int!)
            }
            if (view["parameters"]["padding_right"].int != nil){
                padding_right = CGFloat(view["parameters"]["padding_right"].int!)
            }
            if (view["parameters"]["padding_top"].int != nil){
                padding_top = CGFloat(view["parameters"]["padding_top"].int!)
            }
            if (view["parameters"]["padding_bottom"].int != nil){
                padding_bottom = CGFloat(view["parameters"]["padding_bottom"].int!)
            }
            
            let tmp = AnyView(
                ZStack(alignment: alignment){
                    ForEach(sparks, id: \.id) { anyview in
                        anyview.view
                    }
                }
                    .padding(.all, view["parameters"]["padding"].int == nil ? 0 : CGFloat(view["parameters"]["padding"].int!))
                    .background(view["parameters"]["background"].string == nil ? Color.clear : Color.init(hex: view["parameters"]["background"].string!))
                    .cornerRadius(view["parameters"]["corners"].int == nil ? 0 : CGFloat(view["parameters"]["corners"].int!))
                    .padding(.bottom, padding_bottom)
                    .padding(.top, padding_top)
                    .padding(.leading, padding_left)
                    .padding(.trailing, padding_right)
                    
            )
            sparks.removeAll()
            sparks.append(SparkStruct(view: tmp))
        }
        
        return AnyView(
            ForEach(sparks, id: \.id) { anyview in
                anyview.view
            }
        )

        
        
    }
    
}

struct EngineDraw: View {
    let engine = Engine()
    
    var body: some View {
        return engine.builder()
    }
}


struct EngineDraw_Previews: PreviewProvider {
    static var previews: some View {
        EngineDraw()
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)
        
        let r = (rgbValue & 0xff0000) >> 16
        let g = (rgbValue & 0xff00) >> 8
        let b = rgbValue & 0xff
        
        self.init(red: Double(r) / 0xff, green: Double(g) / 0xff, blue: Double(b) / 0xff)
    }
}

struct ScaleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
    }
}

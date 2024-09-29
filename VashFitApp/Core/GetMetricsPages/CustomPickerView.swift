import SwiftUI

struct CustomPickerView: View {
    @Binding var selection: Double // Работаем с Double
    let data: [Double]
    @Binding var isAgeSelectingView: Bool
    @Binding var isWidthSelectingView: Bool
    @Binding var isHeightSelectingView: Bool
    @State var colorPickerSelect: Color
    var body: some View {
        GeometryReader { geometry in
            ScrollViewReader { scrollProxy in
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 15) {
                        ForEach(Array(data.enumerated()), id: \.offset) { index, value in
                            
                            // For AgeSelectView
                            
                            if isAgeSelectingView == true {
                                Text(String(format: "%.0f", value))
                                    .font(.system(size: value == selection ? 40 : 30, weight: value == selection ? .bold : .regular))
                                    .foregroundColor(value == selection ? colorPickerSelect : .gray)
                                    .frame(width: geometry.size.width * 0.5, height: 120)
                                    .background(value == selection ? colorPickerSelect.opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                    .id(index) // id as index
                                    .onTapGesture {
                                        withAnimation {
                                            selection = value // Update the selected
                                        }
                                    }
                            }
                            
                            // For wightSelectView
                            
                            else if isWidthSelectingView == true {
                                Text(String(format: "%.1f" + "kg", value))
                                    .font(.system(size: value == selection ? 40 : 30, weight: value == selection ? .bold : .regular))
                                    .foregroundColor(value == selection ? colorPickerSelect : .gray)
                                    .frame(width: geometry.size.width * 0.5, height: 120)
                                    .background(value == selection ? colorPickerSelect.opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                    .id(index) // id as index
                                    .onTapGesture {
                                        withAnimation {
                                            selection = value // Update the selected
                                        }
                                    }
                            }
                            
                            // for HeightSelectView
                            
                            else if isHeightSelectingView == true {
                                
                                Text(String(format: "%.1f" + "cm", value))
                                    .font(.system(size: value == selection ? 40 : 30, weight: value == selection ? .bold : .regular))
                                    .foregroundColor(value == selection ? colorPickerSelect : .gray)
                                    .frame(width: geometry.size.width * 0.5, height: 120)
                                    .background(value == selection ? colorPickerSelect.opacity(0.2) : Color.clear)
                                    .cornerRadius(10)
                                    .id(index) // id as index
                                    .onTapGesture {
                                        withAnimation {
                                            selection = value // Update the selected
                                        }
                                    }
                            }
                        }
                    }
                    .frame(width: geometry.size.width)
                    .onAppear {
                        // scroll logic
                        if let index = data.firstIndex(of: selection) {
                            scrollProxy.scrollTo(index, anchor: .center)
                        }
                    }
                }
                .frame(height: 500)
                .clipped()
            }
        }
        .frame(height: 500)
    }
}
#Preview {
    CustomPickerView(selection: .constant(70.0), data: stride(from: 30.0, to: 150.0, by: 0.5).map { $0 }, isAgeSelectingView: .constant(true), isWidthSelectingView: .constant(false), isHeightSelectingView: .constant(false), colorPickerSelect: .green)
}

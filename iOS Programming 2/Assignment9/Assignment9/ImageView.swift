//
//  ImageView.swift
//  Assignment9
//
//  Created by David Bradshaw on 11/18/24.
//

import CoreML
import SwiftUI
import Vision

struct ImageView: View {
    var imageName: String
    @State var infoMessage = ""
    @State var useResNet = false

    func useAI(sentImage: String) {
        guard
            let imagePath = Bundle.main.path(
                forResource: sentImage, ofType: "jpg")
        else {
            infoMessage = "Unable to load image"
            return
        }

        let imageURL = NSURL.fileURL(withPath: imagePath)
        let modelFileMobileNet = try? MobileNetV2(
            configuration: MLModelConfiguration())
        let modelFileResnet = try? Resnet50FP16(
            configuration: MLModelConfiguration())

        let model = try! VNCoreMLModel(
            for: useResNet ? modelFileResnet!.model : modelFileMobileNet!.model)
        let handler = VNImageRequestHandler(url: imageURL)
        let request = VNCoreMLRequest(
            model: model, completionHandler: findResults)
        try! handler.perform([request])
    }

    func findResults(request: VNRequest, error: Error?) {
        guard let results = request.results as? [VNClassificationObservation]
        else {
            fatalError("Unable to detect image")
        }

        var bestConfidence: VNConfidence = 0

        for classification in results {
            if classification.confidence > bestConfidence {
                bestConfidence = classification.confidence
                let confidence = bestConfidence * 100
                infoMessage =
                    "Image is: \(classification.identifier)\n\nConfidence: \(confidence.rounded())%"
            }
        }
    }

    var body: some View {
        VStack {
            Image(uiImage: UIImage(named: imageName)!)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 400)
            Text(infoMessage)
                .multilineTextAlignment(.center)
                .font(.title)
            Spacer()
            Toggle(
                useResNet ? "Using Resnet50" : "Using MobileNet",
                isOn: $useResNet
            )
            .onChange(of: useResNet) {
                infoMessage = ""
            }
            .padding()
            Button {
                useAI(sentImage: imageName)
            } label: {
                Text("Run Analyzer")
            }.padding()
        }
    }
}

#Preview {
    ImageView(imageName: "dog")
}

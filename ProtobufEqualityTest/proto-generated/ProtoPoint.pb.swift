// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers


internal func == (lhs: ProtoPoint, rhs: ProtoPoint) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasLatitude == rhs.hasLatitude) && (!lhs.hasLatitude || lhs.latitude == rhs.latitude)
  fieldCheck = fieldCheck && (lhs.hasLongitude == rhs.hasLongitude) && (!lhs.hasLongitude || lhs.longitude == rhs.longitude)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal struct ProtoPointRoot {
  internal static var sharedInstance : ProtoPointRoot {
   struct Static {
       static let instance : ProtoPointRoot = ProtoPointRoot()
   }
   return Static.instance
  }
  internal var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
  }
  internal func registerAllExtensions(registry:ExtensionRegistry) {
  }
}

final internal class ProtoPoint : GeneratedMessage, GeneratedMessageProtocol {
  private(set) var hasLatitude:Bool = false
  private(set) var latitude:Float = Float(0)

  private(set) var hasLongitude:Bool = false
  private(set) var longitude:Float = Float(0)

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if !hasLatitude {
      return false
    }
    if !hasLongitude {
      return false
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasLatitude {
      output.writeFloat(1, value:latitude)
    }
    if hasLongitude {
      output.writeFloat(2, value:longitude)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasLatitude {
      serialize_size += latitude.computeFloatSize(1)
    }
    if hasLongitude {
      serialize_size += longitude.computeFloatSize(2)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  internal class func parseFromData(data:NSData) -> ProtoPoint {
    return ProtoPoint.builder().mergeFromData(data, extensionRegistry:ProtoPointRoot.sharedInstance.extensionRegistry).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtoPoint {
    return ProtoPoint.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> ProtoPoint {
    return ProtoPoint.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->ProtoPoint {
    return ProtoPoint.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> ProtoPoint {
    return ProtoPoint.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtoPoint {
    return ProtoPoint.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> ProtoPointBuilder {
    return ProtoPoint.classBuilder() as! ProtoPointBuilder
  }
  internal func builder() -> ProtoPointBuilder {
    return classBuilder() as! ProtoPointBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return ProtoPointBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return ProtoPoint.builder()
  }
  internal func toBuilder() -> ProtoPointBuilder {
    return ProtoPoint.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:ProtoPoint) -> ProtoPointBuilder {
    return ProtoPoint.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasLatitude {
      output += "\(indent) latitude: \(latitude) \n"
    }
    if hasLongitude {
      output += "\(indent) longitude: \(longitude) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasLatitude {
             hashCode = (hashCode &* 31) &+ latitude.hashValue
          }
          if hasLongitude {
             hashCode = (hashCode &* 31) &+ longitude.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "ProtoPoint"
  }
  override internal func className() -> String {
      return "ProtoPoint"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return ProtoPoint.self
  }
  //Meta information declaration end

}

final internal class ProtoPointBuilder : GeneratedMessageBuilder {
  private var builderResult:ProtoPoint

  required override internal init () {
     builderResult = ProtoPoint()
     super.init()
  }
  var hasLatitude:Bool {
       get {
            return builderResult.hasLatitude
       }
  }
  var latitude:Float {
       get {
            return builderResult.latitude
       }
       set (value) {
           builderResult.hasLatitude = true
           builderResult.latitude = value
       }
  }
  func setLatitude(value:Float)-> ProtoPointBuilder {
    self.latitude = value
    return self
  }
  internal func clearLatitude() -> ProtoPointBuilder{
       builderResult.hasLatitude = false
       builderResult.latitude = Float(0)
       return self
  }
  var hasLongitude:Bool {
       get {
            return builderResult.hasLongitude
       }
  }
  var longitude:Float {
       get {
            return builderResult.longitude
       }
       set (value) {
           builderResult.hasLongitude = true
           builderResult.longitude = value
       }
  }
  func setLongitude(value:Float)-> ProtoPointBuilder {
    self.longitude = value
    return self
  }
  internal func clearLongitude() -> ProtoPointBuilder{
       builderResult.hasLongitude = false
       builderResult.longitude = Float(0)
       return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> ProtoPointBuilder {
    builderResult = ProtoPoint()
    return self
  }
  internal override func clone() -> ProtoPointBuilder {
    return ProtoPoint.builderWithPrototype(builderResult)
  }
  internal override func build() -> ProtoPoint {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> ProtoPoint {
    var returnMe:ProtoPoint = builderResult
    return returnMe
  }
  internal func mergeFrom(other:ProtoPoint) -> ProtoPointBuilder {
    if (other == ProtoPoint()) {
     return self
    }
    if other.hasLatitude {
         latitude = other.latitude
    }
    if other.hasLongitude {
         longitude = other.longitude
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->ProtoPointBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtoPointBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 13 :
        latitude = input.readFloat()

      case 21 :
        longitude = input.readFloat()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}


// @@protoc_insertion_point(global_scope)

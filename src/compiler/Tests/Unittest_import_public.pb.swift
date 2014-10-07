// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers

struct UnittestImportPublicRoot {
  static var sharedInstance : UnittestImportPublicRoot {
   struct Static {
       static let instance : UnittestImportPublicRoot = UnittestImportPublicRoot()
   }
   return Static.instance
  }
  var extensionRegistry:ExtensionRegistry

  init() {
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
  }
  func registerAllExtensions(registry:ExtensionRegistry) {
  }
}

func == (lhs: PublicImportMessage, rhs: PublicImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final public class PublicImportMessage : GeneratedMessage {
  private(set) var hasE:Bool = false
  private(set) var e:Int32 = Int32(0)

  required public init() {
       super.init()
  }
  override public func isInitialized() -> Bool {
   return true
  }
  override public func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasE {
      output.writeInt32(1, value:e)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override public func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasE {
      size += WireFormat.computeInt32Size(1, value:e)
    }
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  class func parseFromData(data:[Byte]) -> PublicImportMessage {
    return PublicImportMessage.builder().mergeFromData(data).build()
  }
  class func parseFromData(data:[Byte], extensionRegistry:ExtensionRegistry) -> PublicImportMessage {
    return PublicImportMessage.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  class func parseFromInputStream(input:NSInputStream) -> PublicImportMessage {
    return PublicImportMessage.builder().mergeFromInputStream(input).build()
  }
  class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->PublicImportMessage {
    return PublicImportMessage.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  class func parseFromCodedInputStream(input:CodedInputStream) -> PublicImportMessage {
    return PublicImportMessage.builder().mergeFromCodedInputStream(input).build()
  }
  class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> PublicImportMessage {
    return PublicImportMessage.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  class func builder() -> PublicImportMessageBuilder {
    return PublicImportMessageBuilder()
  }
  class func builderWithPrototype(prototype:PublicImportMessage) -> PublicImportMessageBuilder {
    return PublicImportMessage.builder().mergeFrom(prototype)
  }
  func builder() -> PublicImportMessageBuilder {
    return PublicImportMessage.builder()
  }
  func toBuilder() -> PublicImportMessageBuilder {
    return PublicImportMessage.builderWithPrototype(self)
  }
  override public func writeDescriptionTo(inout output:String, indent:String) {
    if hasE {
      output += "\(indent) e: \(e) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override public var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasE {
             hashCode = (hashCode &* 31) &+ e.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override public class func className() -> String {
      return "PublicImportMessage"
  }
  override public func classMetaType() -> GeneratedMessage.Type {
      return PublicImportMessage.self
  }


  //Meta information declaration end

}

final class PublicImportMessageBuilder : GeneratedMessageBuilder {
  private var builderResult:PublicImportMessage

  required override init () {
     builderResult = PublicImportMessage()
     super.init()
  }
  var hasE:Bool {
       get {
            return builderResult.hasE
       }
  }
  var e:Int32 {
       get {
            return builderResult.e
       }
       set (value) {
           builderResult.hasE = true
           builderResult.e = value
       }
  }
  func clearE() -> PublicImportMessageBuilder{
       builderResult.hasE = false
       builderResult.e = Int32(0)
       return self
  }
  override var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  override func clear() -> PublicImportMessageBuilder {
    builderResult = PublicImportMessage()
    return self
  }
  override func clone() -> PublicImportMessageBuilder {
    return PublicImportMessage.builderWithPrototype(builderResult)
  }
  override func build() -> PublicImportMessage {
       checkInitialized()
       return buildPartial()
  }
  func buildPartial() -> PublicImportMessage {
    var returnMe:PublicImportMessage = builderResult
    return returnMe
  }
  func mergeFrom(other:PublicImportMessage) -> PublicImportMessageBuilder {
    if (other == PublicImportMessage()) {
     return self
    }
    if other.hasE {
         e = other.e
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  override func mergeFromCodedInputStream(input:CodedInputStream) ->PublicImportMessageBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> PublicImportMessageBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 8 :
        e = input.readInt32()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

//Class extensions: NSData


extension PublicImportMessage {
    class func parseFromNSData(data:NSData) -> PublicImportMessage {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return PublicImportMessage.builder().mergeFromData(bytes).build()
    }
    class func parseFromNSData(data:NSData, extensionRegistry:ExtensionRegistry) -> PublicImportMessage {
        var bytes = [Byte](count: data.length, repeatedValue: 0)
        data.getBytes(&bytes)
        return PublicImportMessage.builder().mergeFromData(bytes, extensionRegistry:extensionRegistry).build()
    }
}

// @@protoc_insertion_point(global_scope)

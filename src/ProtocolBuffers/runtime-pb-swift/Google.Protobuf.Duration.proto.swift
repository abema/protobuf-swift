// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file duration.proto

import Foundation
import ProtocolBuffers


internal extension Google.Protobuf{}

internal func == (lhs: Google.Protobuf.Duration, rhs: Google.Protobuf.Duration) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasSeconds == rhs.hasSeconds) && (!lhs.hasSeconds || lhs.seconds == rhs.seconds)
  fieldCheck = fieldCheck && (lhs.hasNanos == rhs.hasNanos) && (!lhs.hasNanos || lhs.nanos == rhs.nanos)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal extension Google.Protobuf {
  internal struct DurationRoot {
    internal static var sharedInstance : DurationRoot {
     struct Static {
         static let instance : DurationRoot = DurationRoot()
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

  final internal class Duration : GeneratedMessage, GeneratedMessageProtocol, Hashable {
    private(set) var hasSeconds:Bool = false
    private(set) var seconds:Int64 = Int64(0)

    private(set) var hasNanos:Bool = false
    private(set) var nanos:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasSeconds {
        output.writeInt64(1, value:seconds)
      }
      if hasNanos {
        output.writeInt32(2, value:nanos)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasSeconds {
        serialize_size += seconds.computeInt64Size(1)
      }
      if hasNanos {
        serialize_size += nanos.computeInt32Size(2)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> Google.Protobuf.Duration {
      return Google.Protobuf.Duration.builder().mergeFromData(data, extensionRegistry:Google.Protobuf.DurationRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Duration {
      return Google.Protobuf.Duration.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> Google.Protobuf.Duration {
      return Google.Protobuf.Duration.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Duration {
      return Google.Protobuf.Duration.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> Google.Protobuf.Duration {
      return Google.Protobuf.Duration.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.Duration {
      return Google.Protobuf.Duration.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> Google.Protobuf.DurationBuilder {
      return Google.Protobuf.Duration.classBuilder() as! Google.Protobuf.DurationBuilder
    }
    internal func builder() -> Google.Protobuf.DurationBuilder {
      return classBuilder() as! Google.Protobuf.DurationBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return Google.Protobuf.DurationBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return Google.Protobuf.Duration.builder()
    }
    internal func toBuilder() -> Google.Protobuf.DurationBuilder {
      return Google.Protobuf.Duration.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:Google.Protobuf.Duration) -> Google.Protobuf.DurationBuilder {
      return Google.Protobuf.Duration.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if hasSeconds {
        output += "\(indent) seconds: \(seconds) \n"
      }
      if hasNanos {
        output += "\(indent) nanos: \(nanos) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasSeconds {
               hashCode = (hashCode &* 31) &+ seconds.hashValue
            }
            if hasNanos {
               hashCode = (hashCode &* 31) &+ nanos.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "Google.Protobuf.Duration"
    }
    override internal func className() -> String {
        return "Google.Protobuf.Duration"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return Google.Protobuf.Duration.self
    }
    //Meta information declaration end

  }

  final internal class DurationBuilder : GeneratedMessageBuilder {
    private var builderResult:Google.Protobuf.Duration = Google.Protobuf.Duration()

    required override internal init () {
       super.init()
    }
    var hasSeconds:Bool {
         get {
              return builderResult.hasSeconds
         }
    }
    var seconds:Int64 {
         get {
              return builderResult.seconds
         }
         set (value) {
             builderResult.hasSeconds = true
             builderResult.seconds = value
         }
    }
    func setSeconds(value:Int64) -> Google.Protobuf.DurationBuilder {
      self.seconds = value
      return self
    }
    internal func clearSeconds() -> Google.Protobuf.DurationBuilder{
         builderResult.hasSeconds = false
         builderResult.seconds = Int64(0)
         return self
    }
    var hasNanos:Bool {
         get {
              return builderResult.hasNanos
         }
    }
    var nanos:Int32 {
         get {
              return builderResult.nanos
         }
         set (value) {
             builderResult.hasNanos = true
             builderResult.nanos = value
         }
    }
    func setNanos(value:Int32) -> Google.Protobuf.DurationBuilder {
      self.nanos = value
      return self
    }
    internal func clearNanos() -> Google.Protobuf.DurationBuilder{
         builderResult.hasNanos = false
         builderResult.nanos = Int32(0)
         return self
    }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> Google.Protobuf.DurationBuilder {
      builderResult = Google.Protobuf.Duration()
      return self
    }
    internal override func clone() -> Google.Protobuf.DurationBuilder {
      return Google.Protobuf.Duration.builderWithPrototype(builderResult)
    }
    internal override func build() -> Google.Protobuf.Duration {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> Google.Protobuf.Duration {
      var returnMe:Google.Protobuf.Duration = builderResult
      return returnMe
    }
    internal func mergeFrom(other:Google.Protobuf.Duration) -> Google.Protobuf.DurationBuilder {
      if other == Google.Protobuf.Duration() {
       return self
      }
      if other.hasSeconds {
           seconds = other.seconds
      }
      if other.hasNanos {
           nanos = other.nanos
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> Google.Protobuf.DurationBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Google.Protobuf.DurationBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 8 :
          seconds = input.readInt64()

        case 16 :
          nanos = input.readInt32()

        default:
          if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
             unknownFields = unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

}

// @@protoc_insertion_point(global_scope)

// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file duration.proto

import Foundation

public extension Google.Protobuf{}

public func == (lhs: Google.Protobuf.Duration, rhs: Google.Protobuf.Duration) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasSeconds == rhs.hasSeconds) && (!lhs.hasSeconds || lhs.seconds == rhs.seconds)
  fieldCheck = fieldCheck && (lhs.hasNanos == rhs.hasNanos) && (!lhs.hasNanos || lhs.nanos == rhs.nanos)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Google.Protobuf {
  public struct DurationRoot {
    public static var sharedInstance : DurationRoot {
     struct Static {
         static let instance : DurationRoot = DurationRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      Google.Protobuf.SwiftDescriptorRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class Duration : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasSeconds:Bool = false
    public private(set) var seconds:Int64 = Int64(0)

    public private(set) var hasNanos:Bool = false
    public private(set) var nanos:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasSeconds {
        try output.writeInt64(1, value:seconds)
      }
      if hasNanos {
        try output.writeInt32(2, value:nanos)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
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
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Google.Protobuf.Duration> {
      var mergedArray = Array<Google.Protobuf.Duration>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Google.Protobuf.Duration? {
      return try Google.Protobuf.Duration.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> Google.Protobuf.Duration {
      return try Google.Protobuf.Duration.Builder().mergeFromData(data, extensionRegistry:Google.Protobuf.DurationRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration {
      return try Google.Protobuf.Duration.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> Google.Protobuf.Duration {
      return try Google.Protobuf.Duration.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration {
      return try Google.Protobuf.Duration.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> Google.Protobuf.Duration {
      return try Google.Protobuf.Duration.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration {
      return try Google.Protobuf.Duration.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> Google.Protobuf.Duration.Builder {
      return Google.Protobuf.Duration.classBuilder() as! Google.Protobuf.Duration.Builder
    }
    public func getBuilder() -> Google.Protobuf.Duration.Builder {
      return classBuilder() as! Google.Protobuf.Duration.Builder
    }
    public override class func classBuilder() -> MessageBuilder {
      return Google.Protobuf.Duration.Builder()
    }
    public override func classBuilder() -> MessageBuilder {
      return Google.Protobuf.Duration.Builder()
    }
    public func toBuilder() throws -> Google.Protobuf.Duration.Builder {
      return try Google.Protobuf.Duration.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:Google.Protobuf.Duration) throws -> Google.Protobuf.Duration.Builder {
      return try Google.Protobuf.Duration.Builder().mergeFrom(prototype)
    }
    override public func writeDescriptionTo(inout output:String, indent:String) throws {
      if hasSeconds {
        output += "\(indent) seconds: \(seconds) \n"
      }
      if hasNanos {
        output += "\(indent) nanos: \(nanos) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override public var hashValue:Int {
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

    override public class func className() -> String {
        return "Google.Protobuf.Duration"
    }
    override public func className() -> String {
        return "Google.Protobuf.Duration"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return Google.Protobuf.Duration.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Google.Protobuf.Duration = Google.Protobuf.Duration()
      public func getMessage() -> Google.Protobuf.Duration {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasSeconds:Bool {
           get {
                return builderResult.hasSeconds
           }
      }
      public var seconds:Int64 {
           get {
                return builderResult.seconds
           }
           set (value) {
               builderResult.hasSeconds = true
               builderResult.seconds = value
           }
      }
      public func setSeconds(value:Int64) -> Google.Protobuf.Duration.Builder {
        self.seconds = value
        return self
      }
      public func clearSeconds() -> Google.Protobuf.Duration.Builder{
           builderResult.hasSeconds = false
           builderResult.seconds = Int64(0)
           return self
      }
      public var hasNanos:Bool {
           get {
                return builderResult.hasNanos
           }
      }
      public var nanos:Int32 {
           get {
                return builderResult.nanos
           }
           set (value) {
               builderResult.hasNanos = true
               builderResult.nanos = value
           }
      }
      public func setNanos(value:Int32) -> Google.Protobuf.Duration.Builder {
        self.nanos = value
        return self
      }
      public func clearNanos() -> Google.Protobuf.Duration.Builder{
           builderResult.hasNanos = false
           builderResult.nanos = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> Google.Protobuf.Duration.Builder {
        builderResult = Google.Protobuf.Duration()
        return self
      }
      public override func clone() throws -> Google.Protobuf.Duration.Builder {
        return try Google.Protobuf.Duration.builderWithPrototype(builderResult)
      }
      public override func build() throws -> Google.Protobuf.Duration {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Google.Protobuf.Duration {
        let returnMe:Google.Protobuf.Duration = builderResult
        return returnMe
      }
      public func mergeFrom(other:Google.Protobuf.Duration) throws -> Google.Protobuf.Duration.Builder {
        if other == Google.Protobuf.Duration() {
         return self
        }
        if other.hasSeconds {
             seconds = other.seconds
        }
        if other.hasNanos {
             nanos = other.nanos
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream) throws -> Google.Protobuf.Duration.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.Duration.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let tag = try input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            seconds = try input.readInt64()

          case 16 :
            nanos = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)

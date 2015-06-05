// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_threading.proto

import Foundation
import ProtocolBuffers


internal func == (lhs: ThreadingMessages, rhs: ThreadingMessages) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasTestString == rhs.hasTestString) && (!lhs.hasTestString || lhs.testString == rhs.testString)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal struct UnittestThreadingRoot {
  internal static var sharedInstance : UnittestThreadingRoot {
   struct Static {
       static let instance : UnittestThreadingRoot = UnittestThreadingRoot()
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

final internal class ThreadingMessages : GeneratedMessage, GeneratedMessageProtocol, Hashable {
  private(set) var hasTestString:Bool = false
  private(set) var testString:String = ""

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasTestString {
      output.writeString(1, value:testString)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var serialize_size:Int32 = memoizedSerializedSize
    if serialize_size != -1 {
     return serialize_size
    }

    serialize_size = 0
    if hasTestString {
      serialize_size += testString.computeStringSize(1)
    }
    serialize_size += unknownFields.serializedSize()
    memoizedSerializedSize = serialize_size
    return serialize_size
  }
  internal class func parseFromData(data:NSData) -> ThreadingMessages {
    return ThreadingMessages.builder().mergeFromData(data, extensionRegistry:UnittestThreadingRoot.sharedInstance.extensionRegistry).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ThreadingMessages {
    return ThreadingMessages.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> ThreadingMessages {
    return ThreadingMessages.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> ThreadingMessages {
    return ThreadingMessages.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> ThreadingMessages {
    return ThreadingMessages.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ThreadingMessages {
    return ThreadingMessages.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> ThreadingMessagesBuilder {
    return ThreadingMessages.classBuilder() as! ThreadingMessagesBuilder
  }
  internal func builder() -> ThreadingMessagesBuilder {
    return classBuilder() as! ThreadingMessagesBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return ThreadingMessagesBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return ThreadingMessages.builder()
  }
  internal func toBuilder() -> ThreadingMessagesBuilder {
    return ThreadingMessages.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:ThreadingMessages) -> ThreadingMessagesBuilder {
    return ThreadingMessages.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasTestString {
      output += "\(indent) testString: \(testString) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasTestString {
             hashCode = (hashCode &* 31) &+ testString.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "ThreadingMessages"
  }
  override internal func className() -> String {
      return "ThreadingMessages"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return ThreadingMessages.self
  }
  //Meta information declaration end

}

final internal class ThreadingMessagesBuilder : GeneratedMessageBuilder {
  private var builderResult:ThreadingMessages = ThreadingMessages()

  required override internal init () {
     super.init()
  }
  var hasTestString:Bool {
       get {
            return builderResult.hasTestString
       }
  }
  var testString:String {
       get {
            return builderResult.testString
       }
       set (value) {
           builderResult.hasTestString = true
           builderResult.testString = value
       }
  }
  func setTestString(value:String) -> ThreadingMessagesBuilder {
    self.testString = value
    return self
  }
  internal func clearTestString() -> ThreadingMessagesBuilder{
       builderResult.hasTestString = false
       builderResult.testString = ""
       return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> ThreadingMessagesBuilder {
    builderResult = ThreadingMessages()
    return self
  }
  internal override func clone() -> ThreadingMessagesBuilder {
    return ThreadingMessages.builderWithPrototype(builderResult)
  }
  internal override func build() -> ThreadingMessages {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> ThreadingMessages {
    var returnMe:ThreadingMessages = builderResult
    return returnMe
  }
  internal func mergeFrom(other:ThreadingMessages) -> ThreadingMessagesBuilder {
    if other == ThreadingMessages() {
     return self
    }
    if other.hasTestString {
         testString = other.testString
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) -> ThreadingMessagesBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ThreadingMessagesBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 10 :
        testString = input.readString()

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

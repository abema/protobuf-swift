// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_preserve_unknown_enum.proto

import Foundation
import ProtocolBuffers


internal struct Proto2PreserveUnknownEnumUnittest { }

internal func == (lhs: Proto2PreserveUnknownEnumUnittest.MyMessage, rhs: Proto2PreserveUnknownEnumUnittest.MyMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  fieldCheck = fieldCheck && (lhs.repeatedE == rhs.repeatedE)
  fieldCheck = fieldCheck && (lhs.repeatedPackedE == rhs.repeatedPackedE)
  fieldCheck = fieldCheck && (lhs.hasOneofE1 == rhs.hasOneofE1) && (!lhs.hasOneofE1 || lhs.oneofE1 == rhs.oneofE1)
  fieldCheck = fieldCheck && (lhs.hasOneofE2 == rhs.hasOneofE2) && (!lhs.hasOneofE2 || lhs.oneofE2 == rhs.oneofE2)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal func == (lhs: Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra, rhs: Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  fieldCheck = fieldCheck && (lhs.repeatedE == rhs.repeatedE)
  fieldCheck = fieldCheck && (lhs.repeatedPackedE == rhs.repeatedPackedE)
  fieldCheck = fieldCheck && (lhs.hasOneofE1 == rhs.hasOneofE1) && (!lhs.hasOneofE1 || lhs.oneofE1 == rhs.oneofE1)
  fieldCheck = fieldCheck && (lhs.hasOneofE2 == rhs.hasOneofE2) && (!lhs.hasOneofE2 || lhs.oneofE2 == rhs.oneofE2)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal extension Proto2PreserveUnknownEnumUnittest {
  internal struct UnittestPreserveUnknownEnumRoot {
    internal static var sharedInstance : UnittestPreserveUnknownEnumRoot {
     struct Static {
         static let instance : UnittestPreserveUnknownEnumRoot = UnittestPreserveUnknownEnumRoot()
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



  //Enum type declaration start 

  internal enum MyEnum:Int32 {
    case Foo = 0
    case Bar = 1
    case Baz = 2

  }

  //Enum type declaration end 



  //Enum type declaration start 

  internal enum MyEnumPlusExtra:Int32 {
    case EFoo = 0
    case EBar = 1
    case EBaz = 2
    case EExtra = 3

  }

  //Enum type declaration end 

  final internal class MyMessage : GeneratedMessage, GeneratedMessageProtocol, Hashable {


    //OneOf declaration start

    internal enum O {
      case OOneOfNotSet

      internal func checkOneOfIsSet() -> Bool {
           switch self {
           case .OOneOfNotSet:
                return false
           default:
                return true
           }
      }
      case OneofE1(Proto2PreserveUnknownEnumUnittest.MyEnum)

      internal static func getOneofE1(value:O) -> Proto2PreserveUnknownEnumUnittest.MyEnum? {
           switch value {
           case .OneofE1(let enumValue):
                return enumValue
           default:
                return nil
           }
      }
      case OneofE2(Proto2PreserveUnknownEnumUnittest.MyEnum)

      internal static func getOneofE2(value:O) -> Proto2PreserveUnknownEnumUnittest.MyEnum? {
           switch value {
           case .OneofE2(let enumValue):
                return enumValue
           default:
                return nil
           }
      }
    }
    //OneOf declaration end

    private var storageO:MyMessage.O =  MyMessage.O.OOneOfNotSet
    private(set) var e:Proto2PreserveUnknownEnumUnittest.MyEnum = Proto2PreserveUnknownEnumUnittest.MyEnum.Foo
    private(set) var hasE:Bool = false
    private var repeatedEMemoizedSerializedSize:Int32 = 0
    private(set) var repeatedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnum> = Array<Proto2PreserveUnknownEnumUnittest.MyEnum>()
    private var repeatedPackedEMemoizedSerializedSize:Int32 = 0
    private(set) var repeatedPackedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnum> = Array<Proto2PreserveUnknownEnumUnittest.MyEnum>()
    private(set) var hasOneofE1:Bool {
          get {
               if MyMessage.O.getOneofE1(storageO) == nil {
                   return false
               }
               return true
          }
          set(newValue) {
          }
    }
    private(set) var oneofE1:Proto2PreserveUnknownEnumUnittest.MyEnum!{
         get {
              return MyMessage.O.getOneofE1(storageO)
         }
         set (newvalue) {
              storageO = MyMessage.O.OneofE1(newvalue)
         }
    }
    private(set) var hasOneofE2:Bool {
          get {
               if MyMessage.O.getOneofE2(storageO) == nil {
                   return false
               }
               return true
          }
          set(newValue) {
          }
    }
    private(set) var oneofE2:Proto2PreserveUnknownEnumUnittest.MyEnum!{
         get {
              return MyMessage.O.getOneofE2(storageO)
         }
         set (newvalue) {
              storageO = MyMessage.O.OneofE2(newvalue)
         }
    }
    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasE {
        output.writeEnum(1, value:e.rawValue)
      }
      for oneValueOfrepeatedE in repeatedE {
          output.writeEnum(2, value:oneValueOfrepeatedE.rawValue)
      }
      if !repeatedPackedE.isEmpty {
        output.writeRawVarint32(26)
        output.writeRawVarint32(repeatedPackedEMemoizedSerializedSize)
      }
      for oneValueOfrepeatedPackedE in repeatedPackedE {
          output.writeEnumNoTag(oneValueOfrepeatedPackedE.rawValue)
      }
      if hasOneofE1 {
        output.writeEnum(4, value:oneofE1.rawValue)
      }
      if hasOneofE2 {
        output.writeEnum(5, value:oneofE2.rawValue)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasE) {
        serialize_size += e.rawValue.computeEnumSize(1)
      }
      var dataSizerepeatedE:Int32 = 0
      for oneValueOfrepeatedE in repeatedE {
          dataSizerepeatedE += oneValueOfrepeatedE.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizerepeatedE
      serialize_size += (1 * Int32(repeatedE.count))
      var dataSizerepeatedPackedE:Int32 = 0
      for oneValueOfrepeatedPackedE in repeatedPackedE {
          dataSizerepeatedPackedE += oneValueOfrepeatedPackedE.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizerepeatedPackedE
      if !repeatedPackedE.isEmpty {
        serialize_size += 1
        serialize_size += dataSizerepeatedPackedE.computeRawVarint32Size()
      }
      repeatedPackedEMemoizedSerializedSize = dataSizerepeatedPackedE
      if (hasOneofE1) {
        serialize_size += oneofE1.rawValue.computeEnumSize(4)
      }
      if (hasOneofE2) {
        serialize_size += oneofE2.rawValue.computeEnumSize(5)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFromData(data, extensionRegistry:Proto2PreserveUnknownEnumUnittest.UnittestPreserveUnknownEnumRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.classBuilder() as! Proto2PreserveUnknownEnumUnittest.MyMessageBuilder
    }
    internal func builder() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      return classBuilder() as! Proto2PreserveUnknownEnumUnittest.MyMessageBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessageBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder()
    }
    internal func toBuilder() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:Proto2PreserveUnknownEnumUnittest.MyMessage) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if (hasE) {
        output += "\(indent) e: \(e.rawValue)\n"
      }
      var repeatedEElementIndex:Int = 0
      for oneValueOfrepeatedE in repeatedE {
          output += "\(indent) repeatedE[\(repeatedEElementIndex)]: \(oneValueOfrepeatedE.rawValue)\n"
          repeatedEElementIndex++
      }
      var repeatedPackedEElementIndex:Int = 0
      for oneValueOfrepeatedPackedE in repeatedPackedE {
          output += "\(indent) repeatedPackedE[\(repeatedPackedEElementIndex)]: \(oneValueOfrepeatedPackedE.rawValue)\n"
          repeatedPackedEElementIndex++
      }
      if (hasOneofE1) {
        output += "\(indent) oneofE1: \(oneofE1.rawValue)\n"
      }
      if (hasOneofE2) {
        output += "\(indent) oneofE2: \(oneofE2.rawValue)\n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ Int(e.rawValue)
            }
            for oneValueOfrepeatedE in repeatedE {
                hashCode = (hashCode &* 31) &+ Int(oneValueOfrepeatedE.rawValue)
            }
            for oneValueOfrepeatedPackedE in repeatedPackedE {
                hashCode = (hashCode &* 31) &+ Int(oneValueOfrepeatedPackedE.rawValue)
            }
            if hasOneofE1 {
               hashCode = (hashCode &* 31) &+ Int(oneofE1.rawValue)
            }
            if hasOneofE2 {
               hashCode = (hashCode &* 31) &+ Int(oneofE2.rawValue)
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "Proto2PreserveUnknownEnumUnittest.MyMessage"
    }
    override internal func className() -> String {
        return "Proto2PreserveUnknownEnumUnittest.MyMessage"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return Proto2PreserveUnknownEnumUnittest.MyMessage.self
    }
    //Meta information declaration end

  }

  final internal class MyMessageBuilder : GeneratedMessageBuilder {
    private var builderResult:Proto2PreserveUnknownEnumUnittest.MyMessage = Proto2PreserveUnknownEnumUnittest.MyMessage()

    required override internal init () {
       super.init()
    }
      var hasE:Bool{
          get {
              return builderResult.hasE
          }
      }
      var e:Proto2PreserveUnknownEnumUnittest.MyEnum {
          get {
              return builderResult.e
          }
          set (value) {
              builderResult.hasE = true
              builderResult.e = value
          }
      }
      internal func setE(value:Proto2PreserveUnknownEnumUnittest.MyEnum) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
        self.e = value
        return self
      }
      internal func clearE() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
         builderResult.hasE = false
         builderResult.e = .Foo
         return self
      }
    var repeatedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnum> {
        get {
            return builderResult.repeatedE
        }
        set (value) {
            builderResult.repeatedE = value
        }
    }
    func setRepeatedE(value:Array<Proto2PreserveUnknownEnumUnittest.MyEnum>) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      self.repeatedE = value
      return self
    }
    internal func clearRepeatedE() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      builderResult.repeatedE.removeAll(keepCapacity: false)
      return self
    }
    var repeatedPackedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnum> {
        get {
            return builderResult.repeatedPackedE
        }
        set (value) {
            builderResult.repeatedPackedE = value
        }
    }
    func setRepeatedPackedE(value:Array<Proto2PreserveUnknownEnumUnittest.MyEnum>) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      self.repeatedPackedE = value
      return self
    }
    internal func clearRepeatedPackedE() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      builderResult.repeatedPackedE.removeAll(keepCapacity: false)
      return self
    }
      var hasOneofE1:Bool{
          get {
              return builderResult.hasOneofE1
          }
      }
      var oneofE1:Proto2PreserveUnknownEnumUnittest.MyEnum {
          get {
              return builderResult.oneofE1
          }
          set (value) {
              builderResult.hasOneofE1 = true
              builderResult.oneofE1 = value
          }
      }
      internal func setOneofE1(value:Proto2PreserveUnknownEnumUnittest.MyEnum) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
        self.oneofE1 = value
        return self
      }
      internal func clearOneofE1() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
         builderResult.hasOneofE1 = false
         builderResult.oneofE1 = .Foo
         return self
      }
      var hasOneofE2:Bool{
          get {
              return builderResult.hasOneofE2
          }
      }
      var oneofE2:Proto2PreserveUnknownEnumUnittest.MyEnum {
          get {
              return builderResult.oneofE2
          }
          set (value) {
              builderResult.hasOneofE2 = true
              builderResult.oneofE2 = value
          }
      }
      internal func setOneofE2(value:Proto2PreserveUnknownEnumUnittest.MyEnum) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
        self.oneofE2 = value
        return self
      }
      internal func clearOneofE2() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
         builderResult.hasOneofE2 = false
         builderResult.oneofE2 = .Foo
         return self
      }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      builderResult = Proto2PreserveUnknownEnumUnittest.MyMessage()
      return self
    }
    internal override func clone() -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessage.builderWithPrototype(builderResult)
    }
    internal override func build() -> Proto2PreserveUnknownEnumUnittest.MyMessage {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> Proto2PreserveUnknownEnumUnittest.MyMessage {
      var returnMe:Proto2PreserveUnknownEnumUnittest.MyMessage = builderResult
      return returnMe
    }
    internal func mergeFrom(other:Proto2PreserveUnknownEnumUnittest.MyMessage) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      if other == Proto2PreserveUnknownEnumUnittest.MyMessage() {
       return self
      }
      if other.hasE {
           e = other.e
      }
      if !other.repeatedE.isEmpty {
         builderResult.repeatedE += other.repeatedE
      }
      if !other.repeatedPackedE.isEmpty {
         builderResult.repeatedPackedE += other.repeatedPackedE
      }
      if other.hasOneofE1 {
           oneofE1 = other.oneofE1
      }
      if other.hasOneofE2 {
           oneofE2 = other.oneofE2
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessageBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 8 :
          let valueInte = input.readEnum()
          if let enumse = Proto2PreserveUnknownEnumUnittest.MyEnum(rawValue:valueInte){
               e = enumse
          } else {
               unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueInte))
          }

        case 16 :
          let valueIntrepeatedE = input.readEnum()
          if let enumsrepeatedE = Proto2PreserveUnknownEnumUnittest.MyEnum(rawValue:valueIntrepeatedE) {
               builderResult.repeatedE += [enumsrepeatedE]
          } else {
               unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntrepeatedE))
          }

        case 26 :
          var length:Int32 = input.readRawVarint32()
          var oldLimit:Int32 = input.pushLimit(length)
          while input.bytesUntilLimit() > 0 {
          let valueIntrepeatedPackedE = input.readEnum()
          if let enumsrepeatedPackedE = Proto2PreserveUnknownEnumUnittest.MyEnum(rawValue:valueIntrepeatedPackedE) {
               builderResult.repeatedPackedE += [enumsrepeatedPackedE]
          } else {
               unknownFieldsBuilder.mergeVarintField(3, value:Int64(valueIntrepeatedPackedE))
          }
          }
          input.popLimit(oldLimit)

        case 32 :
          let valueIntoneofE1 = input.readEnum()
          if let enumsoneofE1 = Proto2PreserveUnknownEnumUnittest.MyEnum(rawValue:valueIntoneofE1){
               oneofE1 = enumsoneofE1
          } else {
               unknownFieldsBuilder.mergeVarintField(4, value:Int64(valueIntoneofE1))
          }

        case 40 :
          let valueIntoneofE2 = input.readEnum()
          if let enumsoneofE2 = Proto2PreserveUnknownEnumUnittest.MyEnum(rawValue:valueIntoneofE2){
               oneofE2 = enumsoneofE2
          } else {
               unknownFieldsBuilder.mergeVarintField(5, value:Int64(valueIntoneofE2))
          }

        default:
          if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
             unknownFields = unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

  final internal class MyMessagePlusExtra : GeneratedMessage, GeneratedMessageProtocol, Hashable {


    //OneOf declaration start

    internal enum O {
      case OOneOfNotSet

      internal func checkOneOfIsSet() -> Bool {
           switch self {
           case .OOneOfNotSet:
                return false
           default:
                return true
           }
      }
      case OneofE1(Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra)

      internal static func getOneofE1(value:O) -> Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra? {
           switch value {
           case .OneofE1(let enumValue):
                return enumValue
           default:
                return nil
           }
      }
      case OneofE2(Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra)

      internal static func getOneofE2(value:O) -> Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra? {
           switch value {
           case .OneofE2(let enumValue):
                return enumValue
           default:
                return nil
           }
      }
    }
    //OneOf declaration end

    private var storageO:MyMessagePlusExtra.O =  MyMessagePlusExtra.O.OOneOfNotSet
    private(set) var e:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra = Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra.EFoo
    private(set) var hasE:Bool = false
    private var repeatedEMemoizedSerializedSize:Int32 = 0
    private(set) var repeatedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra> = Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra>()
    private var repeatedPackedEMemoizedSerializedSize:Int32 = 0
    private(set) var repeatedPackedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra> = Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra>()
    private(set) var hasOneofE1:Bool {
          get {
               if MyMessagePlusExtra.O.getOneofE1(storageO) == nil {
                   return false
               }
               return true
          }
          set(newValue) {
          }
    }
    private(set) var oneofE1:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra!{
         get {
              return MyMessagePlusExtra.O.getOneofE1(storageO)
         }
         set (newvalue) {
              storageO = MyMessagePlusExtra.O.OneofE1(newvalue)
         }
    }
    private(set) var hasOneofE2:Bool {
          get {
               if MyMessagePlusExtra.O.getOneofE2(storageO) == nil {
                   return false
               }
               return true
          }
          set(newValue) {
          }
    }
    private(set) var oneofE2:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra!{
         get {
              return MyMessagePlusExtra.O.getOneofE2(storageO)
         }
         set (newvalue) {
              storageO = MyMessagePlusExtra.O.OneofE2(newvalue)
         }
    }
    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasE {
        output.writeEnum(1, value:e.rawValue)
      }
      for oneValueOfrepeatedE in repeatedE {
          output.writeEnum(2, value:oneValueOfrepeatedE.rawValue)
      }
      if !repeatedPackedE.isEmpty {
        output.writeRawVarint32(26)
        output.writeRawVarint32(repeatedPackedEMemoizedSerializedSize)
      }
      for oneValueOfrepeatedPackedE in repeatedPackedE {
          output.writeEnumNoTag(oneValueOfrepeatedPackedE.rawValue)
      }
      if hasOneofE1 {
        output.writeEnum(4, value:oneofE1.rawValue)
      }
      if hasOneofE2 {
        output.writeEnum(5, value:oneofE2.rawValue)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if (hasE) {
        serialize_size += e.rawValue.computeEnumSize(1)
      }
      var dataSizerepeatedE:Int32 = 0
      for oneValueOfrepeatedE in repeatedE {
          dataSizerepeatedE += oneValueOfrepeatedE.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizerepeatedE
      serialize_size += (1 * Int32(repeatedE.count))
      var dataSizerepeatedPackedE:Int32 = 0
      for oneValueOfrepeatedPackedE in repeatedPackedE {
          dataSizerepeatedPackedE += oneValueOfrepeatedPackedE.rawValue.computeEnumSizeNoTag()
      }
      serialize_size += dataSizerepeatedPackedE
      if !repeatedPackedE.isEmpty {
        serialize_size += 1
        serialize_size += dataSizerepeatedPackedE.computeRawVarint32Size()
      }
      repeatedPackedEMemoizedSerializedSize = dataSizerepeatedPackedE
      if (hasOneofE1) {
        serialize_size += oneofE1.rawValue.computeEnumSize(4)
      }
      if (hasOneofE2) {
        serialize_size += oneofE2.rawValue.computeEnumSize(5)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFromData(data, extensionRegistry:Proto2PreserveUnknownEnumUnittest.UnittestPreserveUnknownEnumRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.classBuilder() as! Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder
    }
    internal func builder() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      return classBuilder() as! Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder()
    }
    internal func toBuilder() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if (hasE) {
        output += "\(indent) e: \(e.rawValue)\n"
      }
      var repeatedEElementIndex:Int = 0
      for oneValueOfrepeatedE in repeatedE {
          output += "\(indent) repeatedE[\(repeatedEElementIndex)]: \(oneValueOfrepeatedE.rawValue)\n"
          repeatedEElementIndex++
      }
      var repeatedPackedEElementIndex:Int = 0
      for oneValueOfrepeatedPackedE in repeatedPackedE {
          output += "\(indent) repeatedPackedE[\(repeatedPackedEElementIndex)]: \(oneValueOfrepeatedPackedE.rawValue)\n"
          repeatedPackedEElementIndex++
      }
      if (hasOneofE1) {
        output += "\(indent) oneofE1: \(oneofE1.rawValue)\n"
      }
      if (hasOneofE2) {
        output += "\(indent) oneofE2: \(oneofE2.rawValue)\n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ Int(e.rawValue)
            }
            for oneValueOfrepeatedE in repeatedE {
                hashCode = (hashCode &* 31) &+ Int(oneValueOfrepeatedE.rawValue)
            }
            for oneValueOfrepeatedPackedE in repeatedPackedE {
                hashCode = (hashCode &* 31) &+ Int(oneValueOfrepeatedPackedE.rawValue)
            }
            if hasOneofE1 {
               hashCode = (hashCode &* 31) &+ Int(oneofE1.rawValue)
            }
            if hasOneofE2 {
               hashCode = (hashCode &* 31) &+ Int(oneofE2.rawValue)
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra"
    }
    override internal func className() -> String {
        return "Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.self
    }
    //Meta information declaration end

  }

  final internal class MyMessagePlusExtraBuilder : GeneratedMessageBuilder {
    private var builderResult:Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra = Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra()

    required override internal init () {
       super.init()
    }
      var hasE:Bool{
          get {
              return builderResult.hasE
          }
      }
      var e:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra {
          get {
              return builderResult.e
          }
          set (value) {
              builderResult.hasE = true
              builderResult.e = value
          }
      }
      internal func setE(value:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
        self.e = value
        return self
      }
      internal func clearE() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
         builderResult.hasE = false
         builderResult.e = .EFoo
         return self
      }
    var repeatedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra> {
        get {
            return builderResult.repeatedE
        }
        set (value) {
            builderResult.repeatedE = value
        }
    }
    func setRepeatedE(value:Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra>) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      self.repeatedE = value
      return self
    }
    internal func clearRepeatedE() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      builderResult.repeatedE.removeAll(keepCapacity: false)
      return self
    }
    var repeatedPackedE:Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra> {
        get {
            return builderResult.repeatedPackedE
        }
        set (value) {
            builderResult.repeatedPackedE = value
        }
    }
    func setRepeatedPackedE(value:Array<Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra>) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      self.repeatedPackedE = value
      return self
    }
    internal func clearRepeatedPackedE() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      builderResult.repeatedPackedE.removeAll(keepCapacity: false)
      return self
    }
      var hasOneofE1:Bool{
          get {
              return builderResult.hasOneofE1
          }
      }
      var oneofE1:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra {
          get {
              return builderResult.oneofE1
          }
          set (value) {
              builderResult.hasOneofE1 = true
              builderResult.oneofE1 = value
          }
      }
      internal func setOneofE1(value:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
        self.oneofE1 = value
        return self
      }
      internal func clearOneofE1() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
         builderResult.hasOneofE1 = false
         builderResult.oneofE1 = .EFoo
         return self
      }
      var hasOneofE2:Bool{
          get {
              return builderResult.hasOneofE2
          }
      }
      var oneofE2:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra {
          get {
              return builderResult.oneofE2
          }
          set (value) {
              builderResult.hasOneofE2 = true
              builderResult.oneofE2 = value
          }
      }
      internal func setOneofE2(value:Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
        self.oneofE2 = value
        return self
      }
      internal func clearOneofE2() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
         builderResult.hasOneofE2 = false
         builderResult.oneofE2 = .EFoo
         return self
      }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      builderResult = Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra()
      return self
    }
    internal override func clone() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      return Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra.builderWithPrototype(builderResult)
    }
    internal override func build() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra {
      var returnMe:Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra = builderResult
      return returnMe
    }
    internal func mergeFrom(other:Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      if other == Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtra() {
       return self
      }
      if other.hasE {
           e = other.e
      }
      if !other.repeatedE.isEmpty {
         builderResult.repeatedE += other.repeatedE
      }
      if !other.repeatedPackedE.isEmpty {
         builderResult.repeatedPackedE += other.repeatedPackedE
      }
      if other.hasOneofE1 {
           oneofE1 = other.oneofE1
      }
      if other.hasOneofE2 {
           oneofE2 = other.oneofE2
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> Proto2PreserveUnknownEnumUnittest.MyMessagePlusExtraBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 8 :
          let valueInte = input.readEnum()
          if let enumse = Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra(rawValue:valueInte){
               e = enumse
          } else {
               unknownFieldsBuilder.mergeVarintField(1, value:Int64(valueInte))
          }

        case 16 :
          let valueIntrepeatedE = input.readEnum()
          if let enumsrepeatedE = Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra(rawValue:valueIntrepeatedE) {
               builderResult.repeatedE += [enumsrepeatedE]
          } else {
               unknownFieldsBuilder.mergeVarintField(2, value:Int64(valueIntrepeatedE))
          }

        case 26 :
          var length:Int32 = input.readRawVarint32()
          var oldLimit:Int32 = input.pushLimit(length)
          while input.bytesUntilLimit() > 0 {
          let valueIntrepeatedPackedE = input.readEnum()
          if let enumsrepeatedPackedE = Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra(rawValue:valueIntrepeatedPackedE) {
               builderResult.repeatedPackedE += [enumsrepeatedPackedE]
          } else {
               unknownFieldsBuilder.mergeVarintField(3, value:Int64(valueIntrepeatedPackedE))
          }
          }
          input.popLimit(oldLimit)

        case 32 :
          let valueIntoneofE1 = input.readEnum()
          if let enumsoneofE1 = Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra(rawValue:valueIntoneofE1){
               oneofE1 = enumsoneofE1
          } else {
               unknownFieldsBuilder.mergeVarintField(4, value:Int64(valueIntoneofE1))
          }

        case 40 :
          let valueIntoneofE2 = input.readEnum()
          if let enumsoneofE2 = Proto2PreserveUnknownEnumUnittest.MyEnumPlusExtra(rawValue:valueIntoneofE2){
               oneofE2 = enumsoneofE2
          } else {
               unknownFieldsBuilder.mergeVarintField(5, value:Int64(valueIntoneofE2))
          }

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

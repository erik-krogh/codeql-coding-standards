import cpp
import codingstandards.cpp.autosar
import codingstandards.cpp.HardwareOrProtocolInterface
import codingstandards.cpp.ImplicitHardwareOrProtocolInterfaceClass

predicate problem(HardwareOrProtocolInterfaceClass c) {
  not isExcluded(c,
    ClassesPackage::dataTypesUsedForInterfacingWithHardwareOrProtocolsMustBeTrivialAndStandardLayoutQuery()) and
  not c.isPOD()
}
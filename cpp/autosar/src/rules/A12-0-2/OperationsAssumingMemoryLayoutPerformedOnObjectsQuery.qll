import cpp
import codingstandards.cpp.autosar

class Object extends Class {
  Object() { not this.(Struct).isPOD() }
}
predicate isPointerToObject(Expr e) {
  e.(VariableAccess).getType().(PointerType).getBaseType() instanceof Object
  or
  e.(AddressOfExpr).getOperand().getType() instanceof Object
}

predicate problem(FunctionCall fc, string functionName) {
  not isExcluded(fc, ExpressionsPackage::operationsAssumingMemoryLayoutPerformedOnObjectsQuery()) and
  /*
   * Note: this list was arbitrarily chosen, based on <https://en.cppreference.com/w/c/string/byte>,
   * and may be incomplete.
   */

  functionName in [
      "memcmp", "memset", "memset_s", "memcpy", "memcpy_s", "memmove", "memmove_s", "free"
    ] and
  fc.getTarget().hasGlobalOrStdName(functionName) and
  isPointerToObject(fc.getAnArgument())
}
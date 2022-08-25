import cpp
import codingstandards.cpp.autosar

class NonPODType extends Class {
  NonPODType() { not this.isPOD() }
}

predicate problem(NonPODType p, Field f) {
  not isExcluded(p, ClassesPackage::memberDataInNonPodClassTypesNotPrivateQuery()) and
  f = p.getAField() and
  not f.isCompilerGenerated() and
  (f.isProtected() or f.isPublic())
}
import cpp
import codingstandards.cpp.autosar
import codingstandards.cpp.Typehelpers

predicate problem(Struct s) {
  not isExcluded(s, ClassesPackage::nonPodTypeShouldBeDefinedAsClassQuery()) and
  not s.isPOD()
}
/**
 * @id cpp/autosar/operations-assuming-memory-layout-performed-on-objects
 * @name A12-0-2: Bitwise operations and operations that assume data representation in memory shall not be performed on objects
 * @description Performing bitwise operations on objects may access bits that are not part of the
 *              value representation, which may lead to undefined behavior. Operations on objects
 *              (e.g. initialization, copying, comparing, setting, accessing) shall be done by
 *              dedicated constructors, overloaded operators, accessors or mutators.
 * @kind problem
 * @precision very-high
 * @problem.severity warning
 * @tags external/autosar/id/a12-0-2
 *       maintainability
 *       external/autosar/allocated-target/implementation
 *       external/autosar/enforcement/partially-automated
 *       external/autosar/obligation/required
 */

import OperationsAssumingMemoryLayoutPerformedOnObjectsQuery

from FunctionCall fc, string functionName
where problem(fc, functionName)
select fc, "Use of an object as argument to 'std::" + functionName + "'."

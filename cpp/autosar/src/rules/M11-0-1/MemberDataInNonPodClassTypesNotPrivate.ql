/**
 * @id cpp/autosar/member-data-in-non-pod-class-types-not-private
 * @name M11-0-1: Member data in non-POD class types shall be private
 * @description Using member functions to access internal class data allows a class to be maintained
 *              without impacting clients.
 * @kind problem
 * @precision very-high
 * @problem.severity recommendation
 * @tags external/autosar/id/m11-0-1
 *       maintainability
 *       external/autosar/allocated-target/implementation
 *       external/autosar/enforcement/automated
 *       external/autosar/obligation/required
 */

import MemberDataInNonPodClassTypesNotPrivateQuery

from NonPODType p, Field f
where problem(p, f)
select f, "Member data in a non-POD class is not private."

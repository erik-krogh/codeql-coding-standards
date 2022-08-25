/**
 * @id cpp/autosar/data-types-used-for-interfacing-with-hardware-or-protocols-must-be-trivial-and-standard-layout
 * @name A9-6-1: Data types used for interfacing with hardware shall be trivial and standard-layout
 * @description To ensure reliable behavior, data types used for interfacing with hardware or
 *              conforming to communication protocols shall be trivial, standard-layout and only
 *              contain members of types with defined sizes.
 * @kind problem
 * @precision very-high
 * @problem.severity recommendation
 * @tags external/autosar/id/a9-6-1
 *       maintainability
 *       external/autosar/allocated-target/design
 *       external/autosar/enforcement/partially-automated
 *       external/autosar/obligation/required
 */

import DataTypesUsedForInterfacingWithHardwareOrProtocolsMustBeTrivialAndStandardLayoutQuery

from HardwareOrProtocolInterfaceClass c
where problem(c)
select c,
  "Data type used for hardware interface or communication protocol is not standard layout and trivial."

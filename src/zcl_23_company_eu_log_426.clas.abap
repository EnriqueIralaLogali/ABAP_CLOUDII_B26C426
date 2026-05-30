CLASS zcl_23_company_eu_log_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_04_log_c426 .

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_23_company_eu_log_426 IMPLEMENTATION.

  METHOD zif_04_log_c426~define_company.
    rv_company = 'Company Europe....'.
  ENDMETHOD.

ENDCLASS.

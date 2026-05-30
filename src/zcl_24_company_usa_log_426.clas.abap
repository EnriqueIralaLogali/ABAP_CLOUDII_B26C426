CLASS zcl_24_company_usa_log_426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_04_log_c426 .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_24_company_usa_log_426 IMPLEMENTATION.
  METHOD zif_04_log_c426~define_company.
    rv_company = 'Company USA....'.
  ENDMETHOD.
ENDCLASS.

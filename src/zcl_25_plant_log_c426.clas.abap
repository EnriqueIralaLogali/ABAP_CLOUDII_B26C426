CLASS zcl_25_plant_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      assign_company IMPORTING io_company      TYPE REF TO zif_04_log_c426
                     RETURNING VALUE(rv_plant) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_25_plant_log_c426 IMPLEMENTATION.

  METHOD assign_company.
    rv_plant = |Plant was assigned to .... { io_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.

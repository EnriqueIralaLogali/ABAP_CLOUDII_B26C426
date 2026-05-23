CLASS zcl_04_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS:
      constructor.

    CLASS-METHODS:
      class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_log_c426 IMPLEMENTATION.

  METHOD class_constructor.
    log = | { log } - Static Constructor--> |.
  ENDMETHOD.

  METHOD constructor.
    log = | { log } - Instance Constructor--> |.
  ENDMETHOD.

ENDCLASS.

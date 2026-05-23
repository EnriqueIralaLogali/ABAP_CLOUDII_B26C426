CLASS zcl_05_log_c426 DEFINITION
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: architecture TYPE string VALUE '64 Bits'.

    METHODS:
      get_architecture
        RETURNING VALUE(rv_architecture) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_log_c426 IMPLEMENTATION.

  METHOD get_architecture.
     rv_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.

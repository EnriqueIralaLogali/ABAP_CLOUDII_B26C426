CLASS zcl_07_log_c426 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string.

  PROTECTED SECTION.

    DATA: view_type TYPE string,
          box       TYPE string.

  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_07_log_c426 IMPLEMENTATION.

  METHOD constructor.
    me->view_type = iv_view_type.
  ENDMETHOD.

ENDCLASS.

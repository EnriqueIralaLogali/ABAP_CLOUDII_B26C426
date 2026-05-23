CLASS zcl_08_log_c426 DEFINITION
  PUBLIC
  INHERITING FROM zcl_07_log_c426
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor
        IMPORTING
          iv_view_type TYPE string
          iv_box       TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_log_c426 IMPLEMENTATION.

  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).

    me->box = iv_box.

  ENDMETHOD.

ENDCLASS.

CLASS zcl_29_laptop_lo_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: keyboard TYPE REF TO zcl_28_keyboard_log_c426.
    METHODS:
      constructor IMPORTING io_keyboard TYPE REF TO zcl_28_keyboard_log_c426.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_29_laptop_lo_c426 IMPLEMENTATION.

  METHOD constructor.
    me->keyboard = io_keyboard.
  ENDMETHOD.

ENDCLASS.

CLASS zcl_21_cargo_plane_log_c426 DEFINITION
  PUBLIC
  INHERITING FROM zcl_20_airplane_log_c426
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_21_cargo_plane_log_c426 IMPLEMENTATION.

  METHOD airplane_type.
    rv_airplane_type = 'Cargo plane'.
  ENDMETHOD.

ENDCLASS.

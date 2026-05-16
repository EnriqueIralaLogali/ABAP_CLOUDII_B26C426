CLASS zcl_01_exec_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_log_c426 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*     out->write( 'Hola Logali C426' ).

* POO Basics
    DATA(lo_object) = NEW zcl_02_log_c426( ).

*    DATA: lo_obj TYPE REF TO zcl_02_log_c426.
*
*    CREATE OBJECT lo_obj.

    lo_object->my_attr = 'Attribute1'.

    lo_object->my_method(
      EXPORTING
        iv_attr = 'Attribute2'
      IMPORTING
        ev_attr = DATA(lv_value) ).

    out->write( lo_object->manage_name( 'Enrique' ) ).

    out->write( lo_object->my_attr ).
    out->write( lv_value ).

    zcl_02_log_c426=>my_attr_static = 'Static Attr'.

    out->write( zcl_02_log_c426=>my_attr_static ).

    out->write( zcl_02_log_c426=>cons-cons1 ).










  ENDMETHOD.

ENDCLASS.

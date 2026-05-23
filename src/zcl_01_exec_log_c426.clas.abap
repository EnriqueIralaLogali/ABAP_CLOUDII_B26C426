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

*    lo_object->my_attr = 'Attribute1'.
*
*    lo_object->my_method(
*      EXPORTING
*        iv_attr = 'Attribute2'
*      IMPORTING
*        ev_attr = DATA(lv_value) ).
*
*    out->write( lo_object->manage_name( 'Enrique' ) ).
*
*    out->write( lo_object->my_attr ).
*    out->write( lv_value ).
*
*    zcl_02_log_c426=>my_attr_static = 'Static Attr'.
*
*    out->write( zcl_02_log_c426=>my_attr_static ).
*
*    out->write( zcl_02_log_c426=>cons-cons1 ).

    DATA(lo_obj_bs) = NEW zcl_03_log_c426( ).

*    out->write( lo_obj_bs->get_flight(
*                  iv_carrier_id = 'LH'
*                  "iv_conn_id    =
*                  ) ).
*
*    lo_obj_bs->get_flight2(
*      EXPORTING
*        iv_carrier_id = 'LH'
*      IMPORTING
*        et_flight     = DATA(lt_results) ).
*
*    out->write( lt_results ) .

*    "lo_obj_bs->company_name = 'Capgemini'.
*
*    out->write( lo_obj_bs->company_name ).

* Instances
*    DATA(lo_cosnt) = NEW zcl_04_log_c426( ).
*
*    out->write( zcl_04_log_c426=>log ).
*
*    DATA(lo_cosnt2) = NEW zcl_04_log_c426( ).
*
*    out->write( zcl_04_log_c426=>log ).

* Heritance
*    DATA(lo_heritance) = NEW zcl_06_log_c426( ).
*
*    out->write( lo_heritance->get_architecture( ) ).

*    DATA(lo_const_her) = NEW zcl_08_log_c426(
*      iv_view_type = 'VIEW01'
*      iv_box       = 'BOX01' ).


* Heritance - Methods Redefinition

*    TYPES: BEGIN OF ty_name,
*             name TYPE string,
*           END OF ty_name.
*
*    DATA: ls_name TYPE ty_name.
*
*    ls_name-name = 'FatherName'.
*
*    DATA(lo_father) = NEW zcl_09_log_c426( ).
*    DATA(lo_child) = NEW zcl_10_log_c426( ).
*
**    lo_father->set_name( is_name = ls_name ).
**
**    out->write( lo_father->gt_name ).
*
*    lo_child->set_name( is_name = ls_name ).
*
*    out->write( lo_child->gt_name ).

* Narrowing cast --> Up Cast

    DATA(lo_animal) = NEW zcl_11_log_c426( ).
    DATA(lo_lion) = NEW zcl_12_log_c426( ).

    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).

    lo_animal = lo_lion.

    out->write( lo_animal->walk( ) ).
    out->write( lo_lion->walk( ) ).





















  ENDMETHOD.

ENDCLASS.

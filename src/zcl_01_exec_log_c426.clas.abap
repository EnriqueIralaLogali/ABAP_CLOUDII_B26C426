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

** Narrowing cast --> Up Cast
*
*    DATA(lo_animal) = NEW zcl_11_log_c426( ).
*    DATA(lo_lion) = NEW zcl_12_log_c426( ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
*    "lo_animal = lo_lion.
*    out->write( 'Narrowing Cast' ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).
*
** Widening Cast --> Down cast
*
*    TRY.
*        lo_lion ?= lo_animal.
*
*      CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
*        out->write( lx_cast->get_text( ) ).
*        RETURN.
*    ENDTRY.
*
*    out->write( 'Widening Cast' ).
*
*    out->write( lo_animal->walk( ) ).
*    out->write( lo_lion->walk( ) ).

* Friendship
*  data(lo_friend) = new zcl_13_log_c426( ).


* Interfaces
*    DATA(lo_int) = NEW zcl_16_interfaces_log_c426( ).
*
*    lo_int->set_conn_id( 'conn001' ).
*
*    out->write( lo_int->get_conn_id( ) ).
*
*    out->write( lo_int->get_customer( '000007' ) ).
*
*    out->write( lo_int->zif_03_log_c426~get_airports( ' ' ) ).

** Polymorphism
*    DATA: lt_airplanes TYPE STANDARD TABLE OF REF TO zcl_20_airplane_log_c426,
*          lo_airplane  TYPE REF TO zcl_20_airplane_log_c426,
*          lo_cargo_p   TYPE REF TO zcl_21_cargo_plane_log_c426,
*          lo_pass_p    TYPE REF TO zcl_22_pass_plane_log_c426.
*
*    lo_cargo_p = NEW #( ).
*    APPEND lo_cargo_p TO lt_airplanes.
*
*    lo_pass_p = NEW #( ).
*    APPEND lo_pass_p TO lt_airplanes.
*
*    LOOP AT lt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.

* Polymorphism - Interfaces
*    DATA: lt_companies   TYPE STANDARD TABLE OF REF TO zif_04_log_c426,
*          lo_company     TYPE REF TO zif_04_log_c426,
*          lo_company_eu  TYPE REF TO zcl_23_company_eu_log_426,
*          lo_company_usa TYPE REF TO zcl_24_company_usa_log_426,
*          lo_plant       TYPE REF TO zcl_25_plant_log_c426.
*
*    lo_company_eu = NEW #( ).
*    APPEND lo_company_eu TO lt_companies.
*
*    lo_company_usa = NEW #( ).
*    APPEND lo_company_usa TO lt_companies.
*
*    lo_plant = NEW #( ).
*
*    LOOP AT lt_companies INTO lo_company.
*      out->write( lo_company->define_company( ) ).
*      out->write( lo_plant->assign_company( lo_company ) ).
*    ENDLOOP.

* Assciation - References
*    DATA(lo_credit_card) = NEW zcl_26_credit_card_log_c426( ).
*    DATA(lo_client) = NEW zcl_27_client_log_c426( ).
*
*    lo_credit_card->set_card_num( '2222 3333 4444 5555' ).
*
*    lo_client->set_credit_card( lo_credit_card ).
*
*    out->write( lo_client->get_credit_card( )->get_card_num( ) ).

* Composition - References
    DATA(lo_keyboard) = NEW zcl_28_keyboard_log_c426( ).
    DATA(lo_laptop) = NEW zcl_29_laptop_lo_c426( lo_keyboard ).

    lo_keyboard->keyboard_type = 'ES'.

    out->write( lo_laptop->keyboard->keyboard_type ).



















  ENDMETHOD.

ENDCLASS.

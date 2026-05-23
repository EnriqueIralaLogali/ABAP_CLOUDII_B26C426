CLASS zcl_10_log_c426 DEFINITION INHERITING FROM zcl_09_log_c426
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: set_name REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_log_c426 IMPLEMENTATION.

  METHOD set_name.

    TYPES: BEGIN OF ty_name,
             name TYPE string,
           END OF ty_name.

    DATA: ls_name TYPE ty_name.

    ls_name-name = 'Name1'.

    APPEND ls_name TO me->gt_name.

     ls_name-name = 'Name2'.

    super->set_name( is_name = ls_name ).

  ENDMETHOD.

ENDCLASS.

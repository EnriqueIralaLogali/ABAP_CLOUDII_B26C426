CLASS zcl_02_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: BEGIN OF cons,
                 cons1 TYPE string VALUE 'Logali',
                 cons2 TYPE string VALUE 'ABAP Cloud II',
               END OF cons,
               cons3 TYPE string VALUE 'C426'.

    "Attributes
    DATA: my_attr  TYPE string. " Instance

    CLASS-DATA: my_attr_static TYPE string. " Static

    "Methods
    METHODS: my_method               " Instance
      IMPORTING iv_attr TYPE string
      EXPORTING ev_attr TYPE string,

      manage_name
        IMPORTING VALUE(iv_name) TYPE string
        RETURNING VALUE(rv_name) TYPE string.



    CLASS-METHODS: my_static_method.  " Static

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: my_prv_attr TYPE string,
          name        TYPE string.

ENDCLASS.



CLASS zcl_02_log_c426 IMPLEMENTATION.

  METHOD my_method.

    my_prv_attr = iv_attr.

    ev_attr = my_prv_attr.

  ENDMETHOD.

  METHOD my_static_method.

  ENDMETHOD.

  METHOD manage_name.

   name = iv_name.

   rv_name = name.

  ENDMETHOD.

ENDCLASS.

CLASS zcl_18_abstract_child_log_c426 DEFINITION ABSTRACT
  PUBLIC
  INHERITING FROM zcl_17_abstract_log_c426
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: production_line REDEFINITION,
             input_products REDEFINITION,
             abstract_method ABSTRACT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_18_abstract_child_log_c426 IMPLEMENTATION.

   METHOD input_products.
    rv_input = 'input products'.
  ENDMETHOD.


  METHOD production_line.
    rv_production = 'Production line'.
  ENDMETHOD.

ENDCLASS.

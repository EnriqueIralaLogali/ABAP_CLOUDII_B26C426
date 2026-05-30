CLASS zcl_15_log_c426 DEFINITION INHERITING FROM zcl_14_log_c426
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: get_private_data.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_log_c426 IMPLEMENTATION.

  METHOD get_private_data.

    DATA(lo_encap) = NEW zcl_14_log_c426( ).

    lo_encap->get_friend_data( ).

    me->my_attr = 'attr_child'.

    DATA(lo_friend) = NEW zcl_13_log_c426( ).

    lo_friend->warehouse = 'Child Warehouse'.

  ENDMETHOD.

ENDCLASS.

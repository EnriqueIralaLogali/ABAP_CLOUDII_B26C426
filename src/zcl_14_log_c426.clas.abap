CLASS zcl_14_log_c426 DEFINITION
  PUBLIC
  CREATE PRIVATE. "PROTECTED. "PUBLIC .

  PUBLIC SECTION.

    METHODS get_friend_data.

  PROTECTED SECTION.

    DATA: my_attr TYPE string.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_log_c426 IMPLEMENTATION.

  METHOD get_friend_data.

    DATA(lo_encap) = NEW zcl_14_log_c426( ).

    DATA(lo_friend) = NEW zcl_13_log_c426( ).

    lo_friend->warehouse = 'Main Warehouse'.
    lo_friend->protected_attr = 'Protected'.

  ENDMETHOD.

ENDCLASS.

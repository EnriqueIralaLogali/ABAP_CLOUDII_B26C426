CLASS zcl_27_client_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      set_credit_card IMPORTING io_credit_card TYPE REF TO zcl_26_credit_card_log_c426,
      get_credit_card RETURNING VALUE(ro_credit_card) TYPE REF TO zcl_26_credit_card_log_c426.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: credit_card TYPE REF TO zcl_26_credit_card_log_c426.

ENDCLASS.



CLASS zcl_27_client_log_c426 IMPLEMENTATION.

  METHOD get_credit_card.
    ro_credit_card = me->credit_card.
  ENDMETHOD.

  METHOD set_credit_card.
    me->credit_card = io_credit_card.
  ENDMETHOD.

ENDCLASS.

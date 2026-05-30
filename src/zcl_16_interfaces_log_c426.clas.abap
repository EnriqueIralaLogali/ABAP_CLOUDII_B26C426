CLASS zcl_16_interfaces_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      zif_01_log_c426,
      zif_02_log_c426.

    ALIASES: get_conn_id FOR zif_01_log_c426~get_conn_id,
             set_conn_id FOR zif_01_log_c426~set_conn_id,
             get_customer FOR zif_02_log_c426~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_16_interfaces_log_c426 IMPLEMENTATION.

  METHOD get_conn_id.

    rv_conn_id = me->zif_01_log_c426~conn_id.

  ENDMETHOD.

  METHOD set_conn_id.

    me->zif_01_log_c426~conn_id = iv_conn_id.

  ENDMETHOD.

  METHOD get_customer.

    SELECT SINGLE FROM /dmo/customer
    FIELDS first_name,
           last_name
     WHERE customer_id = @iv_cust_id
      INTO @rs_cust_address.

  ENDMETHOD.

  METHOD zif_03_log_c426~get_airports.

  ENDMETHOD.

ENDCLASS.

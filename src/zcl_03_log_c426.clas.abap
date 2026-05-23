CLASS zcl_03_log_c426 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_flight,
             carrier_id    TYPE /dmo/carrier_id,
             connection_id TYPE /dmo/connection_id,
             flight_date   TYPE /dmo/flight_date,
             price         TYPE /dmo/flight_price,
           END OF ty_flight,

           tt_flight TYPE TABLE OF ty_flight.

    DATA: company_name TYPE string VALUE 'Logali' READ-ONLY.

    METHODS:

      set_name IMPORTING name TYPE string,
      get_name RETURNING VALUE(name) type string,

      get_flight
        IMPORTING iv_carrier_id    TYPE /dmo/carrier_id
                  iv_conn_id       TYPE /dmo/connection_id OPTIONAL
        RETURNING VALUE(rs_flight) TYPE ty_flight,

      get_flight2
        IMPORTING iv_carrier_id TYPE /dmo/carrier_id
        EXPORTING et_flight     TYPE tt_flight.
    "RETURNING VALUE(rt_flight) TYPE tt_flight.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: name TYPE string.
ENDCLASS.



CLASS zcl_03_log_c426 IMPLEMENTATION.

  METHOD get_flight.

    IF iv_conn_id IS SUPPLIED.

      SELECT SINGLE FROM /dmo/flight
      FIELDS carrier_id,
             connection_id,
             flight_date,
             price
       WHERE carrier_id = @iv_carrier_id
         AND connection_id = @iv_conn_id
        INTO @rs_flight.

    ELSE.

      SELECT SINGLE FROM /dmo/flight
      FIELDS carrier_id,
        connection_id,
        flight_date,
        price
  WHERE carrier_id = @iv_carrier_id
   INTO @rs_flight.

    ENDIF.

  ENDMETHOD.

  METHOD get_flight2.

    SELECT FROM /dmo/flight
      FIELDS carrier_id,
             connection_id,
             flight_date,
             price
       WHERE carrier_id = @iv_carrier_id
        INTO TABLE @et_flight.

  ENDMETHOD.

  METHOD set_name.

    me->name = name.

  ENDMETHOD.

  METHOD get_name.

    name = me->name.

  ENDMETHOD.

ENDCLASS.

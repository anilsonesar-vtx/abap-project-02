CLASS zcl_abap_example_01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abap_example_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
      out->write( 'Hello World!' ).

    DATA: lv_customer_type_filter TYPE i.
    DATA: lv_material_field TYPE string.
    DATA: lt_material_data TYPE TABLE OF /vgm/vd0arphd.

    " Fetch data from /vgm/vd0arphd into lt_material_data
    SELECT *
    FROM /vgm/vd0arphd
    INTO TABLE lt_material_data
    WHERE mtrct EQ 'RP'.

    " Loop through the data.
    LOOP AT lt_material_data ASSIGNING FIELD-SYMBOL(<lwa_material_data>).

      IF lv_material_field EQ 'A'.
        <lwa_material_data>-country = 'US'.
      ENDIF.


      CHECK <lwa_material_data>-mtrct EQ 'RP'.

      lv_material_field = <lwa_material_data>-mtrnr.
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.

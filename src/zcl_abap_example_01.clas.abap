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

    " Fetch data from /vgm/vd0arphd into lt_material_data
    SELECT *
    FROM /vgm/vd0arphd
    INTO TABLE @DATA(lt_material_data)
    WHERE mtrct EQ 'RP'
      AND mtrnr NE ''
      AND ExTid NE ''.


  ENDMETHOD.
ENDCLASS.

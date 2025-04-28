class ZCL_ABAP_EXAMPLE_01 definition
  public
  final
  create public .

public section.

  interfaces IF_OO_ADT_CLASSRUN .

  methods INIT_DATA .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAP_EXAMPLE_01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  FIELD-SYMBOLS: <lt_table> TYPE STANDARD TABLE.

      out->write( 'Hello World!' ).

    " Fetch data from /vgm/vd0arphd into lt_material_data
    SELECT *
    FROM /vgm/vd0arphd
    INTO TABLE @DATA(lt_material_data)
    WHERE mtrct EQ 'RP'
      AND mtrnr NE ''
      AND extid EQ '1234'.

     LOOP AT <lt_table> ASSIGNING FIELD-SYMBOL(<lwa_data>).
     ENDLOOP.


  ENDMETHOD.


  METHOD init_data.

    DATA: lv_variable TYPE i.

    DATA: lv_variable_2 TYPE i.

  ENDMETHOD.
ENDCLASS.

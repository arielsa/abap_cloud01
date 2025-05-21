CLASS zcasc_cl_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcasc_cl_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    data: it_art type Standard TABLE OF zcasc_tab_art.
*        INSERT INITIAL LINE INTO it_art ASSIGNING FIELD-SYMBOL(<fs>).
*        <fs>-des1 = 'des 1'.
*        <fs>-id = 1.
        it_art = value #( ( client = sy-mandt des1 = 'des 1' id = 1 )
                          ( client = sy-mandt des1 = 'des 2' id = 2 )
                        ).
        insert zcasc_tab_art FROM table @it_art.
        if sy-subrc = 0.
            out->write( 'bien echo' ).
        endif.
  ENDMETHOD.
ENDCLASS.

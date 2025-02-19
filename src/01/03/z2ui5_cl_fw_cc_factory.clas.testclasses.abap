CLASS ltcl_unit_test DEFINITION FINAL FOR TESTING
  DURATION MEDIUM
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.
  PROTECTED SECTION.

  PRIVATE SECTION.
    METHODS test_js_for_debugger   FOR TESTING RAISING cx_static_check.

ENDCLASS.


CLASS ltcl_unit_test IMPLEMENTATION.

  METHOD test_js_for_debugger.

    DATA(lv_js) = z2ui5_cl_fw_cc_factory=>get_js_startup( ).
    IF lv_js CS `debugger`.
      cl_abap_unit_assert=>fail( 'HTTP GET - custom control js contains the command debugger' ).
    ENDIF.

        IF lv_js CS `jQuery`.
      cl_abap_unit_assert=>fail( 'HTTP GET - custom control js contains the command jQuery' ).
    ENDIF.

*     IF lv_js CS `setTimeout`.
*      cl_abap_unit_assert=>fail( 'HTTP GET - custom control js contains the command setTimeout' ).
*    ENDIF.

  ENDMETHOD.

ENDCLASS.

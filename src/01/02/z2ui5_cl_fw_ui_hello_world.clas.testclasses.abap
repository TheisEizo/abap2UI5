CLASS ltcl_unit_test DEFINITION FINAL FOR TESTING
  DURATION short
  RISK LEVEL dangerous.

  PRIVATE SECTION.
    METHODS first_test FOR TESTING RAISING cx_static_check.

ENDCLASS.


CLASS ltcl_unit_test IMPLEMENTATION.

  METHOD first_test.

    DATA(lo_app) = NEW z2ui5_cl_fw_ui_hello_world( ) ##NEEDED.

  ENDMETHOD.

ENDCLASS.

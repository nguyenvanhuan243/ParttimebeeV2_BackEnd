/**
 * Theme: Adminto Admin Template
 * Author: Coderthemes
 * SweetAlert
 */

!function ($) {
    "use strict";

    var SweetAlert = function () {};

    SweetAlert.prototype.init = function () {
        //Success
        // $('#success-alert').click(function () {
        // Select all button with TagName = "button"
        $(document.getElementsByTagName('button_example')).click(function () {
            swal({
                title: "Are you sure?",
                text: "You will not be able to recover this imaginary file!",
                type: "success",
                showCancelButton: true,
                confirmButtonClass: 'btn-success waves-effect waves-light',
                confirmButtonText: 'Yes, I Agree.'
            },
                function(isConfirm){

                   if (isConfirm){
                     window.location.href = "/admin"

                    } else {
                      window.location.href ="/admin"
                    }
                 }
            );

        });
    },
        //init
        $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
}(window.jQuery),


//initializing 
    function ($) {
        "use strict";
        $.SweetAlert.init()
    }(window.jQuery);

    // <% Disposableemail.find(disposableemail.id).destroy %>

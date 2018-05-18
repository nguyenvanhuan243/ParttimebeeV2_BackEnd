    var data = ['a', 'b', 'c'];
    var task_name = "sweetalert";
    var project_name = "Something";
    var uname ="SweetAlert"

    $(document).ready(function () {
        NotificationCheck(data[0]);
    });

    function NotificationCheck(noti) {
        is_last = (data.indexOf(noti) + 1 == data.length);

        NotificationPopUpIsApprove(is_last, function (boool) {
            if (boool) { // Do something with response from user
                console.log(noti);
            }

            if (data.indexOf(noti) < (data.length)) { // Inject next element for user response
                next = data.indexOf(noti) + 1;
                NotificationCheck(data[next]);
            }

        });
    }

    function NotificationPopUpIsApprove(is_last, callback) {
        swal({
            title: "Are you sure?",
            text: "The Task " + task_name + " In Project " + project_name + "is Completed by " + uname,
            type: "warning",
            confirmButtonText: "Approve!",
            closeOnConfirm: false,
            confirmButtonColor: "#44E753",
            cancelButtonText: "Reasssign!",
            showCancelButton: true,
        },

        function (isConfirm) {
            if (is_last) { //Close SweetAlert box
                swal.close();
            }
            callback(isConfirm); //Sends user's response
        });

    }
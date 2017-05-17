/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("navigation");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

$(document).ready(function() {
    $('form').validate({
        errorPlacement: function(error, element) {
            var parent = $(element).parent(".input-group");
            if (parent !== null && parent.length > 0) {
                parent.after(error);
            } else {
                error.insertAfter(element);
            }
        }
    });

    $("[id$=txtEmail]").rules("add",
        {
            required: true,
            messages: {
                required: "Email address is required."
            }
        });
});
$(document).ready(function() {
    $("#in").keyup(function() {
        $.ajax({
            url: "../php/test.php?q=" + $("#in").val(),
            // url: "test.txt",
            success: function(result) {
                $("#txtHint").html(result);
            }
        });
    });
});
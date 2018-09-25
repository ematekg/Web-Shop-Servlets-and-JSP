$(function () {

    $("input[type='checkbox']").click(function () {

        if($(this).is(':checked')){
            var elmnt=$("p.hc");
            console.log(elmnt);
            for (var i=0;i<elmnt.length;i++ ) {

                if($(elmnt[i]).text()!=$(this).val()){
                    $(elmnt[i]).parents(".w3-third").css("display","none");
                }

            }
        } else {
            var elmnt=$("p.hc");
            console.log(elmnt);
            for (var i=0;i<elmnt.length;i++ ) {

                if($(elmnt[i]).text()!=$(this).val()){
                    $(elmnt[i]).parents(".w3-third").css("display","block");
                }

            }
        }



    });




    $(".w3-third").click(diplayBike);
    function diplayBike() {
         $("#hid").val($(this).find("p.ph").text());
         $("#sbt").click();
    }



})
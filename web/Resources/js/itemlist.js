$(function () {

    $("#lbl").text("Total: " + $("#ttl").val());
    $("#hid").val($("#ttl").val());
    $(".rmv").click(function () {

       // if($("#qty").val()!=="Quantity"){




            var item = {id:$("#iid").val(), qty: parseInt($("#iqty").val())};
            $.get('cart',{cart: JSON.stringify(item)}, "json");
          // setTimeout(fun, 200);


       // }



        $(this).parents(".well").css("display","none");

        var total=$("#ttl").val()-$(this).parents(".well").find("span.tv").text();

        $("#lbl").text("Total: " + total);
        $("#hid").val(total);
        $.post('bike',successCallback, "json");
        function successCallback(data){
            $("#btnqty").text(data.toString());


        }

    })

})

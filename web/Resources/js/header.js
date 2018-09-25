$(function () {

  getQty();



    function getQty(){

        $.post('bike',successCallback, "json");
        function successCallback(data){
            $("#btnqty").text(data.toString());


        }
    }

    $("#ff").submit(function (e) {
           // $.post('cart',callback, "json");
        if($("#btnqty").text()==0){
            e.preventDefault();
        }

    })
})

// function callback(data) {
//
// }
$(function () {
    //var q=0;
    // $.post('bike',successCallback, "json");
    // function successCallback(data){
    //     q=parseInt(data.toString());
    //     $("#btnqty").text(data.toString() + " items");
    //
    //
    // }


    $("#cart").click(function () {
        var count=0;
        if($("#qty").val()!=="Quantity"){

            // count=parseInt($("#btnqty").text())+parseInt($("#qty").val());
            // $("#btnqty").text((count));


            var item = {id:$(this).val(), qty: parseInt($("#qty").val())};
            $.get('cart',{cart: JSON.stringify(item)}, "json");
            setTimeout(f, 200);


        }

    })


//    ellem

    $("#btncom").click(add);


    function add() {

        var comment= $('#comment').val();
        var titel = $('#usr').val();
        var allcomment = {title:titel, review:comment};//this is an object

        $.post('comment',{allcomment: JSON.stringify(allcomment)}, processData, "json")//this sends to the product controller*/

    }
    function processData(data){

        // data = JSON.parse(data);
        $("div.rw").find("p").text(data.review);
        $("#us").text(data.title);
        $(".rw").css("display","block");
        // var td0=$('<td>').text(data.review);
        //
        // var td1 = $('<td>').text(data.title);
        //
        // var tr = $('<tr>').append(td1).append(td0);
        // $('#tbl_products>tbody').append(tr);


    }


//    ellen


})

function f() {
   // alert("ji");
    $.post('bike',successCallback, "json");
    function successCallback(data){
       // alert(data.toString());
        $("#btnqty").text(data.toString());


    }

}
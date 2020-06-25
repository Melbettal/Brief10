
    // document.getElementById('TOT'+productid).value = subtot.toFixed(2);
    // document.getElementById('Osubtot'+productid).value  =  document.getElementById('TOT'+productid).value;

    // var table = document.getElementById('table');
    // var items = table.getElementsByTagName('output');

    // var sum = 0;
    // for(var i=0; i<items.length; i++)
    //     sum +=   parseFloat(items[i].value);

    // var output = document.getElementById('sum');
    // output.innerHTML =  sum.toFixed(2);

    // function Total(){
    //     var produit = document.getElementsByName('produit_nom');
    //     var produitSelect =[];
    //     var j=0;
    //     var prix = document.getElementsByClassName('produit_prix');
    //     var Totalprix = document.getElementById('Totalprix');
    //     var Somme=0;
    //     var select = document.getElementById('methodeP');

    //     for (var i=0;i<produit.length;i++)
    //     {
    //         if(produit[i].checked)
    //         {
    //             produitSelect[j]=produit[i].id;
    //             j++;
    //             Somme += Number(prix[i].innerHTML);   
    //         }
    //     }
    //     Totalprix.innerText = "Le prix total est : "+ Somme + "DHS";
    //     document.getElementById("confirmer").style.display = "block";
    //     document.getElementById('FormPrix').innerText += Somme +" DHS";
    //     document.getElementById('FormPrix').value= Somme;
    //     Totalprix.value= Somme;

    //     document.getElementById('methodeP').addEventListener('change', function (e) {
    //     if (e.target.value === "CarteBanquaire") {
    //         document.getElementById('code').style.display ="block";
    //     }else{
    //         document.getElementById('code').style.display ="none";
    //     }
    //     });
     
    // }

    
 function totalprice() {
    var table = document.getElementById('table');
          var items = table.getElementsByTagName('output');
    
          var sum = 0;
          for(var i=0; i<items.length; i++)
            sum +=   parseFloat(items[i].value);
    
          var output = document.getElementById('sum');
          output.innerHTML =  sum.toFixed(2); 
    
        var deliveryfee = document.getElementById('deliveryfee').value;
        var pickupfee = document.getElementById('pickupfee').value;
        var fee = 0.00;
             // alert(paymethod);
         if (deliveryfee.checked==true){
              document.getElementById('fee').innerHTML =  document.getElementById('BRGY').value;
    
         }else if (pickupfee.checked==true){
             document.getElementById('fee').innerHTML = 0.0;
    
         }
    
        // over all price
        var overall = 0;
       
        overall = sum + parseFloat(fee);
    
        var overallprice = document.getElementById('overall');
    
        overallprice.innerHTML = overall.toFixed(2); 
    
        document.getElementById("alltot").value = overallprice.innerHTML ;
    
    
     }
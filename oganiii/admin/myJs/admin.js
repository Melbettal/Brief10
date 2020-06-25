$(document).ready(() => {
    $('#sort-srch-input').on('keyup', (e) => {
        $('.prodBox').each((i, element) => {
            if ($(element).attr('data-nom').toLowerCase().indexOf(e.target.value.toLowerCase()) > -1) {
                $(element).animate({
                    opacity: "1"
                }, 100, () => {
                    $(element).css("display", "block")
                });
            } else {
                $(element).animate({
                    opacity: "0"
                }, 100, () => {
                    $(element).css("display", "none")
                });
            }
        });
    });
    // 
    // $('#btnAddProductExecute').on('click', () => {
    //     var fd = new FormData();
    //     // 
    //     fd.append('imgProduit', $('#addProductImage')[0].files[0]);
    //     fd.append('nomProduit', $('#addProductName').val());
    //     fd.append('catProduit', $('#addCategorie option:selected').val());
    //     fd.append('prixProduit', $('#addProductPrice').val());
    //     fd.append('qtProduit', $('#addProductQt').val());
    //     // 
    //     $.ajax({
    //         url: 'addProduit.php',
    //         type: 'post',
    //         data: fd,
    //         contentType: false,
    //         processData: false,
    //         success: async response => {
    //             var params = {
    //                 content: "",
    //                 type: "error",
    //                 behavior: {
    //                     type: "normal"
    //                 },
    //                 duration: 3000
    //             }
    //             // 
    //             switch (response) {
    //                 case '100':
    //                     params.content = "Le nom d'image est tres long";
    //                     break;
    //                 case '101':
    //                     params.content = "Type d'image doit étre d'une extension .png";
    //                     break;
    //                 case '102':
    //                     params.content = "Erreur pendant l'upload d'image";
    //                     break;
    //                 case '103':
    //                 case '104':
    //                     params.content = "Erreur pendant l'execution de votre demande";
    //                     break;
    //                 case '105':
    //                     params.content = "Produit ajoutée avec succes!";
    //                     params.type = "success";
    //                     params.duration = 2000;
    //                     break;
    //                 default:
    //                     params.content = 'Erreur cote server';
    //             }
    //             // 
    //             await toast(params);
    //             if (response == '105')
    //                 window.location.reload();
    //         },
    //     });
    // });
});
// 
// 
function editSwitch(btn, type, index, prodId) {
    var className = type == 'price' ? 'prodPrixText' : 'prodQuantityText';
    var rootElement = Array.from(document.getElementsByClassName('prodBox')).filter((elem) => {
        return elem.getAttribute('data-id') == index;
    });
    rootElement = rootElement[0];
    var element = Array.from(document.getElementsByClassName(className)).filter((elem) => {
        return elem.parentElement.parentElement.parentElement.parentElement.parentElement == rootElement;
    });
    element = element[0];
    // 
    var newState = element.getAttribute('contenteditable');
    if (newState == 'false') {
        btn.setAttribute('class', 'fa fa-check');
        newState = 'true';
        element.style = "outline-style : auto !important";
 } else {
        btn.setAttribute('class', 'fa fa-edit');
        newState = 'false';
        element.style.outlineStyle = "initial";
    }
    // 
    element.setAttribute('contenteditable', newState);
    // 
    if (newState == 'false') {
        $.post('function.ad.php', {
            idProduit: prodId,
            colName: type == 'price' ? 'price' : 'qty',
            colValue: element.innerText
        }, async response => {
            var params = {
                content: "Produit modifié avec succès",
                type: "success",
                behavior: {
                    type: "normal"
                },
                duration: 3000
            }
            if (response != '1') {
                params.content = "Erreur lors de l'execution de la commande";
                params.type = "error";
            } else
                rootElement.setAttribute('data-stock', element.innerText);
            // 
            await toast(params);
        });
    }
}
// 
async function deleteProd(element, prodId) {
    var params = {
        content: "Voulez vous vraiment supprimer cette produit ?",
        type: "normal",
        behavior: {
            type: "advanced",
            controls: [{
                type: "button",
                appearance: "main",
                text: "Supprimer",
                callback: "true"
            }, {
                type: "button",
                appearance: "sec",
                text: "Annuler",
                callback: "cancel"
            }]
        },
        duration: "active"
    }
    var res = await toast(params);
    if (res) {
        var res = await $.post('function.ad.php', {
            deleteProdId: prodId
        }).promise();
        // 
        params = {
            content: "Erreur!",
            type: "error",
            behavior: {
                type: "normal"
            },
            duration: 3000
        }
        if (res == "1") {
            params.content = "Produit supprimer avec success!";
            params.type = "normal";
            // 
            element.parentElement.parentElement.parentElement.parentElement.parentElement.remove();
        }
        // 
        await toast(params);
    }
}
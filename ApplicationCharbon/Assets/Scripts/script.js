$(document).ready(function () {
	// Activate tooltips
	$('[data-toggle="tooltip"]').tooltip();

	// Filter table rows based on searched term
	$("input[type='search']").on("keyup", function () {
		var term = $(this).val().toLowerCase();
		$("table tbody tr").each(function () {
			var found = false;
			$(this).find("td").each(function () {
				if ($(this).text().toLowerCase().indexOf(term) > -1) {
					found = true;
					return false;
				}
			});
			if (found) {
				$(this).show();
			} else {
				$(this).hide();
			}
		});
	});

});




$(function () {
	$('[data-dismiss="modal"]').click(function () {
		$('.modal').modal('hide');
	});
});

$(".edit-fournisseur").click(function (e) {
	e.preventDefault();

	var fournisseurid = $(this).data('fournisseurid');
	$('#id_fournisseurED').val(fournisseurid);
	if ($(this).hasClass("edit-fournisseur")) {
		$("#modifierFournisseur").modal("show");
	}
});

$(".delete-fournisseur").click(function (e) {
	e.preventDefault();

	var fournisseurid = $(this).data('fournisseurid');
	$('#id_fournisseur').val(fournisseurid);
	if ($(this).hasClass("delete-fournisseur")) {
		$("#supprimerFournisseur").modal("show");
	}
});



$(".edit-station").click(function (e) {
	e.preventDefault();

	var Stationid = $(this).data('stationid');
	$('#id_station').val(Stationid);
	
	if ($(this).hasClass("edit-station")) {
		$("#modifierStation").modal("show");
	}
});
$(".delete-station").click(function (e) {
	e.preventDefault();

	var Stationid = $(this).data('stationid');
	$('#idstation').val(Stationid);
	if ($(this).hasClass("delete-station")){
		$("#supprimerStation").modal("show");
	}
});

$(".details-station").click(function (e) {
	e.preventDefault();
	var Stationname = $(this).data('stationname');
	var Stationadress = $(this).data('stationadress');
	var Stationphone = $(this).data('stationphone');
	$('#modal-title').html(Stationname);
	$('#adresse').html(Stationadress);
	$('#telephone').html(Stationphone);
	if ($(this).hasClass("details-station")) {
		$("#showdetailsModal").modal("show");
	}
});




$(".edit-PV").click(function (e) {
	e.preventDefault();

	var Planingid = $(this).data('planingid');
	var StationName = $(this).data('stationname');
	var Annee = $(this).data('annee');
	$('#planingid').val(Planingid);
	$('#stationname').val(StationName);
	$('#annee').val(Annee);
	if ($(this).hasClass("edit-PV")) {
		$("#modifierPV").modal("show");
	}
});
$(".delete-PV").click(function (e) {
	e.preventDefault();

	var Stationid = $(this).data('stationid');
	$('#idstation').val(Stationid);
	if ($(this).hasClass("delete-station")) {
		$("#supprimerPV").modal("show");
	}
});


$(".edit-stock").click(function (e) {
	e.preventDefault();

	var Idstock = $(this).data('idstock');
	var Consommation = $(this).data('consommation');
	var Livraison = $(this).data('livraison');
	var Decharge = $(this).data('decharge');
	var Autonomie = $(this).data('autonomie');
	$('#id_stock').val(Idstock);
	$('#consommation').val(Consommation);
	$('#livraison').val(Livraison);
	$('#decharge').val(Decharge);
	$('#autonomie').val(Autonomie);
	if ($(this).hasClass("edit-stock")) {
		$("#modifierStock").modal("show");
	}
});
$(".delete-stock").click(function (e) {
	e.preventDefault();
	var Idstock = $(this).data('id_stock');
	
	$('#id_stock').val(Idstock);
	
	if ($(this).hasClass("delete-stock")) {
		$("#supprimerStock").modal("show");
	}
});




$(".edit-CS").click(function (e) {
	e.preventDefault();

	var IdSCentrale = $(this).data('idscentrale');
	var Stock_Initial = $(this).data('stockinitial');
	var Stock_Final = $(this).data('stockfinal');
	var Stock_Ajustement = $(this).data('stockajustement');
	var Stock_Date = $(this).data('stockdate');
	$('#Id_SCentrale').val(IdSCentrale);
	$('#stock_initial').val(Stock_Initial);
	$('#stock_final').val(Stock_Final);
	$('#stock_ajustement').val(Stock_Ajustement);
	$('#stock_date').val(Stock_Date);
	if ($(this).hasClass("edit-CS")) {
		$("#modifierCS").modal("show");
	}
});
$(".delete-CS").click(function (e) {
	e.preventDefault();

	var IdSCentrale = $(this).data('idscentrale');
	
	$('#id_CS').val(IdSCentrale);
	
	if ($(this).hasClass("delete-CS")) {
		$("#supprimerCS").modal("show");
	}
});

$(".edit-bateau").click(function (e) {
	e.preventDefault();

	var IdSCentrale = $(this).data('idscentrale');
	var Stock_Initial = $(this).data('stockinitial');
	var Stock_Final = $(this).data('stockfinal');
	var Stock_Ajustement = $(this).data('stockajustement');
	var Stock_Date = $(this).data('stockdate');
	$('#Id_SCentrale').val(IdSCentrale);
	$('#stock_initial').val(Stock_Initial);
	$('#stock_final').val(Stock_Final);
	$('#stock_ajustement').val(Stock_Ajustement);
	$('#stock_date').val(Stock_Date);
	if ($(this).hasClass("edit-CS")) {
		$("#modifierCS").modal("show");
	}
});
$(".delete-bateau").click(function (e) {
	e.preventDefault();

	var IdBateau = $(this).data('bateauid');

	$('#id_bateau').val(IdBateau);

	if ($(this).hasClass("delete-bateau")) {
		$("#supprimerBateau").modal("show");
	}
});




//remplir les champs du formulaire (Modifier AO)
function remplirFormulaireAO(id, numAO, type, tonnage, nbr_bateaux, date_creation, date_Emission, date_livraison, observation, statut) {
	document.getElementById("id_appOffreED").value = id;
	document.getElementById("n_appel_offreED").value = numAO;
	document.getElementById("typeED").value = type;
	document.getElementById("tonnageED").value = tonnage;
	document.getElementById("nbr_bateauxED").value = nbr_bateaux;
	document.getElementById("date_creationED").value = date_creation;
	document.getElementById("date_EmissionED").value = date_Emission;
	document.getElementById("date_livraisonED").value = date_livraison;
	document.getElementById("observationED").value = observation;
	document.getElementById("statutED").value = statut;
}

//Suppression AO
function suppressionAO(id) {
	document.getElementById("Id_AOSupp").value = id;
}


//remplir les champs du formulaire (Modifier Contrat)
function remplirFormulaireContrat(nom, statutC, nbrCg, qT, idCt, idCtD) {
	document.getElementById("nom_contratED11").value = nom;
	document.getElementById("statut_contratED11").value = statutC;
	document.getElementById("nbrCg_contratED11").value = nbrCg;
	document.getElementById("quantite_contratED11").value = qT;
	//document.getElementById("nomFournisseur_contratED11").value = nomF;
	document.getElementById("idContrat_contratED11").value = idCt;
	document.getElementById("idContratDetails_contratED11").value = idCtD;
	//document.getElementById("type_contratED11").value = typeContrat;
}

//Suppression Contrat
function suppressionContrat(id1, id2) {
	document.getElementById("Id_ContratSupp").value = id1;
	document.getElementById("Id_ContratDSupp").value = id2;
}



//remplir les champs du formulaire (Modifier Bateau)
function remplirFormulaireBateau(nom, tg, vq, ct, fd, dg, pr, assr, etat, idBT) {
	document.getElementById("id_bateauED").value = idBT;
	document.getElementById("nom_bateauED").value = nom;
	document.getElementById("tonnageED").value = tg;
	document.getElementById("valeur_calorifiqueED").value = vq;
	document.getElementById("coutED").value = ct;
	document.getElementById("frais_douaneED").value = fd;
	document.getElementById("dechargeED").value = dg;
	document.getElementById("prix_renduED").value = pr;
	document.getElementById("assuranceED").value = assr;
	document.getElementById("etatED").value = etat;
}

//Suppression Bateau
function suppressionBateau(id) {
	document.getElementById("Id_bateauSupp").value = id;
}



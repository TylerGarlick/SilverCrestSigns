/// <reference path="jquery-1.3.2.min-vsdoc.js"/>

$(function() {
	HideAll();



	$("select[name='Type']").change(function() {
		HideAll();

		var linkType = $(this).attr("value");
		if (linkType == 1) {
			$("#CMSPage").show();
		} else if (linkType == 2) {
			$("#ExternalUrl").show();
		} else if (linkType == 3) {
			$("#Modules").show();
		}

	});

	Initialize();

	$("#CSS_Advanced").hide();

	$("#Advanced").click(function() {
		if ($("#Advanced").attr("checked")) {
			$("#CSS_Advanced").show();
		} else {
			$("#CSS_Advanced").hide();
		}
	});

});

function Initialize() {
	var type = $("#MenuItemType").attr("value");

	if (type == "1") {
		$("#CMSPage").show();
	} else if (type == "2") {
		$("#ExternalUrl").show();
	} else {
	$("#Modules").show();
	}
}

function HideAll() {
	$("#CMSPage").hide();
	$("#ExternalUrl").hide();
	$("#Modules").hide();
}

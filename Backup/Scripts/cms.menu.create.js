/// <reference path="jquery-1.3.2.min-vsdoc.js"/>  

$(function() {
	$("#CSS_Advanced").hide();
	$("#ShowAdvanced").click(function() {
		if ($("#ShowAdvanced").attr("checked")) {
			$("#CSS_Advanced").show();
		} else {
			$("#CSS_Advanced").hide();
		}
	});
});
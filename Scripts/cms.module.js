/// <reference path="jquery-1.3.2.min-vsdoc.js"/>

$(function() {
	$(".modules").sortable({
		items: 'div.modulebuildermenu',
		update: function(event, ui) {
			postChangesToServer(event, ui);
		}
	});
});

function postChangesToServer(event, ui) {
	$.post("/Webpages/ChangeRank", { pageId: $("#PageId").attr("value"), contentArea: $("#ContentArea").attr("value"), ids: $(".modules").sortable('toArray') });
}
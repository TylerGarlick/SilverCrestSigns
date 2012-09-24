/// <reference path="jquery-1.3.2.min-vsdoc.js"/>

$(function() {
	$(".sortable").sortable({
		items: 'tr.sort',
		update: function(event, ui) {
			postChangesToServer(event, ui);
		}
	});
});

function postChangesToServer(event, ui) {
	var menuId = $("#MenuId").attr("value");
	var parentId = $("#ParentId").attr("value");
	$.post("/MenuItems/ChangeRank", { menuId: menuId, parentId: parentId, ids: $(".sortable").sortable('toArray') });
}
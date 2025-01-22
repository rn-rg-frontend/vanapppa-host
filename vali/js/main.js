(function () {
	"use strict";

	var treeviewMenu = $('.app-menu');

	// Toggle Sidebar
	$('[data-toggle="sidebar"]').click(function(event) {
		event.preventDefault();
		$('.app').toggleClass('sidenav-closed');
	});

	// Activate sidebar treeview toggle
	$("[data-toggle='treeview']").click(function(event) {
		event.preventDefault();
		if(!$(this).parent().hasClass('is-expanded')) {
			treeviewMenu.find("[data-toggle='treeview']").parent().removeClass('is-expanded');
		}
		$(this).parent().toggleClass('is-expanded');
	});

	// Set initial active toggle
	$("[data-toggle='treeview.'].is-expanded").parent().toggleClass('is-expanded');

	//Activate bootstrip tooltips
	$("[data-toggle='tooltip']").tooltip();
	
	$('.app').toggleClass('sidenav-closed');

	$(document).on('click', function (event) {
		// Check if the clicked target is outside the sidebar and the toggle button
		if (
			!$(event.target).closest('.app-sidebar').length && // Not inside sidebar
			!$(event.target).closest('[data-toggle="sidebar"]').length // Not the toggle button
		) {
			$('.app').addClass('sidenav-closed'); // Collapse the menu
		}
	});

})();

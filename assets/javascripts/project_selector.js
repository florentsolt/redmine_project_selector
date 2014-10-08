$(function() {

	// Turn project selector into searchable dropdown
	$('#project_quick_jump_box').select2({
	  width: 'element',
	  placeholderOption: function() {},
	  selectOnBlur: true
	});

});
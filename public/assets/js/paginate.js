(function($) {
  'use strict';

  if ($('#pagination-demo').length) {
    $('#pagination-demo').twbsPagination({
      totalPages: 35,
      visiblePages: 7,
      onPageClick: function(event, page) {
        $('#services-content').text('Services ' + page);
      }
    });
  }

  if ($('.sync-pagination').length) {
    $('.sync-pagination').twbsPagination({
      totalPages: 20,
      onPageClick: function(evt, page) {
        $('#content').text('Services ' + page);
      }
    });
  }

})(jQuery);

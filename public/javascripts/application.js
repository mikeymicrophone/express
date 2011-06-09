// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function update_vote(num, candidate_id) {
  $('#support_level_candidate_' + candidate_id).text(num);
};

$(function() {
  $('.candidate_vote_slider').mouseup(function(element) {
    var vote_val = $(element.currentTarget).val();
    var candidate = $(element.currentTarget).data('candidate_id');
    $.post('/votes', {vote: {support: vote_val, candidate_id: candidate}, authenticity_token: $('[name="authenticity_token"]').val()});
  });
});
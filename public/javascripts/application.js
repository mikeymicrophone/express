// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function update_vote(num, candidate_id) {
  $('#support_level_candidate_' + candidate_id).text(num);
};

function update_baseline(num, election_id) {
  $('#baseline_level_for_election_' + election_id).text(num);
};

$(function() {
  $('.candidate_vote_slider').mouseup(function(element) {
    var vote_val = $(element.currentTarget).val();
    var candidate = $(element.currentTarget).data('candidate_id');
    $.post('/votes', {vote: {support: vote_val, candidate_id: candidate}, authenticity_token: $('[name="authenticity_token"]').val()});
  });
  
  $('.election_baseline_slider').mouseup(function(element) {
    var baseline_val = $(element.currentTarget).val();
    var election = $(element.currentTarget).data('election_id');
    $.post('/baselines', {baseline: {level: baseline_val, election_id: election}, authenticity_token: $('[name="authenticity_token"]').val()});
  });
});
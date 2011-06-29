// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function update_vote(num, candidate_id) {
  $('#support_level_candidate_' + candidate_id).text(num);
  
  if (num > $('.election_baseline_slider').val()) {
    
  }
};

function update_baseline(num, election_id) {
  $('#baseline_level_for_election_' + election_id).text(num);
  
  $.each($('.candidate'), function(index, candidate) {
    if ($(candidate).children(':has(input)').children('input').val() < num) {
      $(candidate).removeClass('chosen');
    } else if ($(candidate).children(':has(input)').children('input').val() >= num) {
      $(candidate).addClass('chosen');
    }
  });
};

$(function() {
  $('.candidate_vote_slider').mouseup(function(element) {
    var vote_val = $(element.currentTarget).val();
    var candidate_id = $(element.currentTarget).data('candidate_id');
    $.post('/votes', {vote: {support: vote_val, candidate_id: candidate_id}, authenticity_token: $('[name="csrf-token"]').attr('content')});
  });
  
  $('.election_baseline_slider').mouseup(function(element) {
    var baseline_val = $(element.currentTarget).val();
    var election_id = $(element.currentTarget).data('election_id');
    $.post('/baselines', {baseline: {level: baseline_val, election_id: election_id}, authenticity_token: $('[name="csrf-token"]').attr('content')});
  });
});
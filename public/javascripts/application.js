// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
function update_vote(num, candidate_id) {
  $('#support_level_candidate_' + candidate_id).text(num);
  
  // send data to the votes controller
  
};

$(function() {
  $('.candidate_vote_slider').mouseup(function(element) {
    console.log(element.currentTarget.id);
  });
});
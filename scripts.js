$('.container').load("entries.html .entries");

$('.container').click('.entries',function (event) {
  $(event.target).find('.content').toggleClass('hidden');
});

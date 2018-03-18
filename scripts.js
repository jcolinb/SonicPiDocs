$('#navbar').load('assets/entries.html .header');
$('#container').load('assets/entries.html .section');

$('#navbar').click('.header',function (event) {
  $(event.target).children('.info').toggleClass('hidden');
});

$('#container').click('.entry',function (event) {
  $(event.target).find('.content').toggleClass('hidden');
});

// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
function createSong(title) {

  var newSong = { title: title};

  $.ajax({
    type: "POST",
    url: "/artists/:artist_id/songs/:id/songs.json",
    data: JSON.stringify({
        song: newSong
    }),
    contentType: "application/json",
    dataType: "json"
  });
}

function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: "/artists/:artist_id/song.json",
    contentType: "application/json",
    dataType: "json"
  })/artists/artist_id/song.json
  .done(function(data) {
    $('tr[data-id="'+title+'"]').remove();
  });
}

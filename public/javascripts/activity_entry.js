$(document).ready(function() {
  $('.position_tile').click(function() {
    var tile = $(this);
    if (tile.hasClass('tile_selected'))
      remove_position_tile(tile);
    else
      add_position_tile(tile);
  });
});

function remove_position_tile(tile) {
  
  tile.removeClass('tile_selected');
  position_select().children('[value='+get_position_tile_id(tile)+']').removeAttr('selected');
}

function add_position_tile(tile) {
  tile.addClass('tile_selected');
  position_select().children('[value='+get_position_tile_id(tile)+']').attr('selected', 'selected');
}

function get_position_tile_id(tile) {
  return tile.attr('id').replace("position_tile_", "");
}
function position_select() {
  return $('#activity_position_ids');
}

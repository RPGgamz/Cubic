/// @description scr_item_get_text(object_index)
/// @param object_index
switch (argument0){
	case obj_item_key: return("THIS WILL\nBE A KEY\nCOMPONENT\nIN OUR\nVICTORY");
	case obj_item_map: return("IT KNOWS\nDA WAE");
	case obj_item_game: return("IT'S A\nVIDEO GAME\nON A\nCASSETTE");
	default: return(-1);
}
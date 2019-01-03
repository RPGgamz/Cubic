///scr_clean_list(is not work)
var list = argument0
var template_junk = argument1

show_debug_message(string(ds_list_size(list)))

var junk = ds_list_find_index(list, template_junk);
while (junk =! -1) {
    ds_list_delete(list, junk)
    junk = ds_list_find_index(list, template_junk);
}

show_debug_message("and "+string(ds_list_size(list)))

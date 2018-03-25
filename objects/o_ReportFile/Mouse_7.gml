/// @description Insert description here
// You can write your code in this editor

if (countdown ==0)
{
	var menu = instance_find(o_MenuReport,0)
	ds_list_delete(menu.reports, ds_list_find_index(menu.reports,self));
	instance_destroy();
}
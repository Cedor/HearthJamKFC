/// @description Insert description here
// You can write your code in this editor

if (!instance_exists(o_ReportWhite))
{
	var menu = instance_find(o_MenuReport,0);
	var report = instance_create_layer(menu.x+1,menu.y,"Menu",o_ReportWhite);
	ds_list_add(menu.reports,report)
	end_turn();
}

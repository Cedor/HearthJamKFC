/// @description Insert description here
// You can write your code in this editor
var d = o_ReportFile.sprite_height
var i =0;
reports = ds_list_create();
var report = instance_create_layer(x+1,y+d*i,"Menu",o_ReportDelivery);
ds_list_add(reports, report);
i++
var report = instance_create_layer(x+1,y+d*i,"Menu",o_ReportWhite);
ds_list_add(reports, report);
i++
var report = instance_create_layer(x+1,y+d*i,"Menu",o_ReportFile);
ds_list_add(reports, report);
i++
nbReports = ds_list_size(reports)
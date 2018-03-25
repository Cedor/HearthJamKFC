/// @description Insert description here
// You can write your code in this editor
var d = o_ReportFile.sprite_height;
if (nbReports != ds_list_size(reports))
{
	nbReports = ds_list_size(reports)
	for (var i = 0 ; i < nbReports; i++)
	{
		var report = ds_list_find_value(reports,i);
		report.x = x+1;
		report.y = y+d*i;
	}
}
var town = instance_find(o_Town,0);
var pathError = 0;
if (town.selected >0)
{
	pathError = check_path()
	if (pathError == -1)
		clear_path();
}
var i, report;
for (i = 0; i < instance_number(o_ReportFile); i += 1)
{
	report= instance_find(o_ReportFile,i);
	if (report.countdown > 0)
	{
		report.countdown--;
	}
}
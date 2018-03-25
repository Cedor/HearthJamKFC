var town = instance_find(o_Town,0);
var pathError = 0;
if (town.selected >0)
{
	pathError = check_path()
	if (pathError == -1)
		clear_path();
}
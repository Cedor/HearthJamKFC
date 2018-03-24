var i, police;
for (i = 0; i < instance_number(o_TilePolice); i += 1)
   {
   police= instance_find(o_TilePolice,i);
   police.danger++;
   }
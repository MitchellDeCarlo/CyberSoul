rule = false
var boss = instance_create_layer(x,y,"Instances",obj_boss)
boss.shipval = true
if global.valhit>=5{
	rule = true
	global.valhit = 0
}
alarm = 500
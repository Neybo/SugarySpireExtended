if (instance_number(obj_parallax) > 1)
{
    var _first = instance_find(obj_parallax, 0)
    if (id != _first)
    {
        instance_destroy();
        return;
    }
}
bgx = 0
bgy = 0
var i = 5
repeat (5)
    layers[i--] = -4
layerNum = 0
global.ScrollOffset = 0
scroll1 = 0

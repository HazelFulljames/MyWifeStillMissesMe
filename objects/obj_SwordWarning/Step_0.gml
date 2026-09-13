image_alpha -= 0.01;
if (image_alpha <= 0)
{
	instance_create_layer(x, y, layer, obj_Sword, {image_xscale: image_xscale, image_yscale: image_yscale});
	instance_destroy(self);
}
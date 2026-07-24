/// @func   instance_singleton(object)
///
/// @desc   Returns a single instance of the given object,
///         creating one if no instance exists.
///
/// @param  {object}    object      object to look for
/// @param  {layer}     layer id    layer to create in
///
/// @return {instance}  object instance id
///
/// GMLscripts.com/license

function instance_singleton(object, layer_id)
{
    if (instance_number(object) == 0) {
		return instance_create_layer(0, 0, layer_id, object);
	}
    return instance_find(object, 0);
}

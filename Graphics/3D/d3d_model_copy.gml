#define d3d_model_copy
/// d3d_model_copy(model)
//
//  Returns a model index of a copy of a given model.
//  This script requires write access to working_directory.
//
//      model       model index
//
/// GMLscripts.com/license
{
    var newmodel;
    d3d_model_save(argument0,working_directory+"\tempmod.dat");
    newmodel = d3d_model_create();
    d3d_model_load(newmodel,working_directory+"\tempmod.dat");
    file_delete(working_directory+"\tempmod.dat");
    return newmodel;
}
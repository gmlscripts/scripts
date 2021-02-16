#define d3d_model_copy
/// d3d_model_copy(model)
//  GM:S v2.3+ compatible
//
//  Returns a model index of a copy of a given model.
//  This script requires write access to working_directory.
//
//  @param model       model index
//
/// GMLscripts.com/license
function d3d_model_copy(model) {
    var new;
    d3d_model_save(model,working_directory+"\tempmod.dat");
    newmodel = d3d_model_create();
    d3d_model_load(newmodel,working_directory+"\tempmod.dat");
    file_delete(working_directory+"\tempmod.dat");
    return newmodel;
}
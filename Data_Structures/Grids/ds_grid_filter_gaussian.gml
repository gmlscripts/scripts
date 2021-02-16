#define ds_grid_filter_gaussian
/// ds_grid_filter_gaussian(grid,sigma)
//  GM:S v2.3+ compatible
//
//  Performs a Gaussian convolution on a given grid.
//
//  @param grid        grid data structure, id
//  @param sigma       standard deviation, real
//
/// GMLscripts.com/license
function ds_grid_filter_gaussian(grid,sigma) {
    
    var sigma = sigma;
    
    if (sigma > 0)
    {
        //  Select suitable filter size for sigma
        var size = ceil(6*sigma);
        var n = 2*sqr(sigma);
        var d = 1/(sqrt(2*pi)*sigma);
    
        //  Compute Gaussian coefficients
        var g;
        for (var i=size; i>=0; i--)
        {
            g[i] = exp(-sqr(i)/n)*d;
        }
    
        //  Create working grids
        var w = ds_grid_width(grid);
        var h = ds_grid_height(grid);
    
        var work1 = ds_grid_create(w,h);
        var work2 = ds_grid_create(w,h);
    
        //  Filter horizontally
        ds_grid_copy(work1,grid);
        ds_grid_multiply_region(work1,0,0,w-1,h-1,g[0]);
        for (i=1; i<=size; i++)
        {
            ds_grid_copy(work2,grid);
            ds_grid_multiply_region(work2,0,0,w-1,h-1,g[i]);
            ds_grid_add_grid_region(work1,work2,0,0,w-1,h-1,i,0);
            ds_grid_add_grid_region(work1,work2,0,0,w-1,h-1,-i,0);
        }
    
        //  Filter vertically
        ds_grid_copy(grid,work1);
        ds_grid_multiply_region(grid,0,0,w-1,h-1,g[0]);
        for (i=1; i<=size; i++)
        {
            ds_grid_copy(work2,work1);
            ds_grid_multiply_region(work2,0,0,w-1,h-1,g[i]);
            ds_grid_add_grid_region(grid,work2,0,0,w-1,h-1,0,i);
            ds_grid_add_grid_region(grid,work2,0,0,w-1,h-1,0,-i);
        }
    
        //  Clean up
        ds_grid_destroy(work1);
        ds_grid_destroy(work2);
    }
    return 0;
}
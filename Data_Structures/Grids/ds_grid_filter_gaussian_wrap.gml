#define ds_grid_filter_gaussian_wrap
/// ds_grid_filter_gaussian_wrap(grid,sigma)
//
//  Performs a Gaussian convolution on a given grid,
//  wrapping around the boundaries of the grid if needed.
//
//      grid        grid data structure, id
//      sigma       standard deviation, real
//
/// GMLscripts.com/license
{
    var grid = argument0;
    var sigma = argument1;

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

        var sw = w+2*size;
        var sh = h+2*size;

        var work1 = ds_grid_create(sw,sh);
        var work2 = ds_grid_create(sw,sh);
        var grid2 = ds_grid_create(sw,sh);

        //  Duplicate opposite edge data beyond bounds of input grid
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size-w,size-h);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size,size-h);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size+w,size-h);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size-w,size);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size,size);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size+w,size);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size-w,size+h);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size,size+h);
        ds_grid_set_grid_region(grid2,grid,0,0,w-1,h-1,size+w,size+h);

        //  Filter horizontally
        ds_grid_copy(work1,grid2);
        ds_grid_multiply_region(work1,0,0,sw-1,sh-1,g[0]);
        for (i=1; i<=size; i++)
        {
            ds_grid_copy(work2,grid2);
            ds_grid_multiply_region(work2,0,0,sw-1,sh-1,g[i]);
            ds_grid_add_grid_region(work1,work2,0,0,sw-1,sh-1,i,0);
            ds_grid_add_grid_region(work1,work2,0,0,sw-1,sh-1,-i,0);
        }

        //  Filter vertically
        ds_grid_copy(grid2,work1);
        ds_grid_multiply_region(grid2,0,0,sw-1,sh-1,g[0]);
        for (i=1; i<=size; i++)
        {
            ds_grid_copy(work2,work1);
            ds_grid_multiply_region(work2,0,0,sw-1,sh-1,g[i]);
            ds_grid_add_grid_region(grid2,work2,0,0,sw-1,sh-1,0,i);
            ds_grid_add_grid_region(grid2,work2,0,0,sw-1,sh-1,0,-i);
        }

        //  Copy filtered data back to input grid
        ds_grid_set_grid_region(grid,grid2,size,size,size+w-1,size+h-1,0,0);

        //  Clean up
        ds_grid_destroy(work1);
        ds_grid_destroy(work2);
        ds_grid_destroy(grid2);
    }
    return 0;
}
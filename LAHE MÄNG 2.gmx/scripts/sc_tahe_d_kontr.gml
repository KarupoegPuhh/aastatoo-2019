      if i0 < mitm -1 && j0 < mitm -1 && grid[i,j] == grid[i0+1,j0+1]{
    return true;
}else if i0 > 0       && j0 > 0       && grid[i,j] == grid[i0-1,j0-1]{
    return true;
}else if i0 > 0       && j0 < mitm -1 && grid[i,j] == grid[i0-1,j0+1]{
    return true;
}else if i0 < mitm -1 && j0 > 0       && grid[i,j] == grid[i0+1,j0-1]{
    return true;
}else{
    return false;
}

//grid[i,j] == grid[i0+1,j0+1] || grid[i,j] == grid[i0-1,j0-1] || grid[i,j] == grid[i0-1,j0+1] || grid[i,j] == grid[i0+1,j0-1]

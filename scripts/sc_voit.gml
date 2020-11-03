var tahti = 0
for(i0 = 0; i0 < mitm; i0++){
    for(j0 = 0; j0 < mitm; j0++){
        if grid[i0,j0] == 3{
            return false;
        }else if grid[i0,j0] == 1{
            tahti++;
        }
    }
}
if tahti == mitm{
    return true;
}else{
    return false;
}

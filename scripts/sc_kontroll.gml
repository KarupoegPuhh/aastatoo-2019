uksiktaht = true;

for(i = 0; i < mitm; i++){
    for(j = 0; j < mitm; j++){
        if grid[i,j] > 0 && !(i == i0 && j == j0){
            uksiktaht = false;
            if (laud[i0,j0] == laud[i,j] || i == i0 || j == j0 || sc_tahe_d_kontr() ){
                //grid[i,j] = 2;
                grid[i0,j0] = 2;
            }
        }
    }
}

if uksiktaht{
    grid[i0,j0] = 1;
}

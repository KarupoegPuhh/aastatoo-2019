//LOAD
ini_open("save_borges.ini");

globalvar peatukk;
peatukk = ini_read_real("s", "peatukk", 0);

//switch peatukk{
globalvar taltsutatud;
taltsutatud = ini_read_real("s", "taltsutatud", 0);
globalvar kerateadmine;
kerateadmine = ini_read_real("s", "kerateadmine", 0);
globalvar toruleitud;
toruleitud = ini_read_real("s", "toruleitud", 0);
globalvar auraara;
auraara = ini_read_real("s", "auraara", 0);
globalvar valu;
valu = ini_read_real("s", "valu", 0);

globalvar kooke;
kooke = 0;//
globalvar liiv;
liiv = false;
globalvar liigu;
liigu = false;
globalvar paha;
paha = false;
//}
globalvar algabedasi;
algabedasi = ini_read_real("s", "algabedasi", 0);
//tegelane
globalvar sokk;
sokk = ini_read_real("s", "sokk", 0);
globalvar vaip;
vaip = ini_read_real("s", "vaip", 0);
globalvar bedtime;
bedtime = ini_read_real("s", "bedtime", 23);
globalvar uptime;
uptime = ini_read_real("s", "uptime", 8);
globalvar soiduvahend_on;
soiduvahend_on = ini_read_real("s", "soiduvahend_on", 1);
globalvar sokivalik;
sokivalik = ini_read_real("s", "sokivalik", 0);

globalvar debug;
debug = ini_read_real("s", "debug", 0);

ini_close();

//ÜLEJÄÄND
globalvar dmode;
dmode = false;
globalvar loom;
loom = "";
globalvar step;
step = 0;
globalvar juust;
juust = 0;
globalvar controlkits;
controlkits = false;
globalvar eksperiment;
eksperiment = false;

globalvar r1;
r1 = r_valikud//r_valikud;

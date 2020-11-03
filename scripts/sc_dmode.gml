//(ノಠ益ಠ)ノ
switch(loom){
//PALL
    case "obj_korbe_kesk":
        switch(argument0){
            case 0: if kerateadmine{tekst = "lõunakeskuse rõõmupall, mis on siia lennanud.";}else{tekst = "mingi imelik kollane kera...";}
                break;
            case 1: dmode = false;
                break;
        }
    break;
//RAADIOMEES
    case "obj_raadiomees":
        if !taltsutatud{
            switch(argument0){
                case 0: tekst = "Selle olendi küljes on mingi asi...#Midagi grammofoni sarnast?";
                    break;
                case 1: tekst = "R: 'Kuidas teile mu muusikavalik meeldib, rändur?'";
                    valik = 2;
                    valik1 = "Seda pole hästi kuulda";
                    valik2 = "Ma õnneks ei kuule seda";
                    break;
                case 2: tekst = "R: 'Njaa... Siin kõrbes on natukene kehv lugu sellesmõttes jah, et see jube tihenenud-une-uuristaja-laine lainetab koguaeg üle. Vaikust nagu polekski olemas, harva juhtub kui ta ära väsib.'";
                    valik = 2;
                    valik1 = "tihenenud mis?";
                    valik2 = "Tunnen kaasa...";
                    break;
                case 3: tekst = "R: 'Okei, tsau!'";
                    break;
                case 4: dmode = false;
                    break;
            }
        }else{
            switch(argument0){
                case 0: tekst = "Selle tüübi küljes on mingi asi...#Midagi grammofoni sarnast?";
                    break;
                case 1: tekst = "R: 'Kuidas teile mu muusikavalik meeldib, rändur?'";
                    valik = 2;
                    valik1 = "Kvaliteet jätab soovida";
                    valik2 = "Naudiksin rohkem vaikust";
                    break;
                case 2: tekst = "R: 'Njaa... Selle grammofoninõelaga on natukene kehv lugu sellesmõttes jah, et see on päikese käes pehmeks läinud. Ma ei hakka teile valetama, sellesmõttes, et...";
                    break;
                case 3: tekst = "...tegelikult mulle isegi meeldis tihenenud-une-uuristaja-laine. Tänu temale ei pidanud ma oma grammofoni helikvaliteedi pärast häbenema, sest niikuinii polnud väga midagi kuulda.'";
                    break;
                case 4: dmode = false;
                    break;
            }
        }
    break;
//KAEV
    case "obj_kaev":
        switch(argument0){
            case 0: tekst = "Kaev.#Sisaldab olendeid, kes on mingil hetkel oma elus leidnud, et neil pole enam midagi muud paremat teha, kui siia, kõrbe ainsasse kaevu, sisse hüpata.";
                break;
            case 1: tekst = "Miks siin, kõrbe tagumises nurgas, üldse kaev on?#...#On see miraaž? Või järsku on tegemist papist võltskaevuga?";
                break;
            case 2: tekst = "Hüppad sisse?";
                valik = 2;
                valik1 = "Mitte täna";
                valik2 = "Jah, hüppan";//EDIT lööme käed
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{kaevu = true;}else{kaevu = false;}
                }
                ;break;
            case 3: dmode = false;
                if kaevu{room_goto(r_kaev_kukkumine);}
                break;
        }
    break;
//VEEPUDEL
    case "obj_veepudel":
        switch(argument0){
            case 0: tekst = "Veepudel.#Tundub nagu täiesti tavaline 'A u r a  v e s i'.#Keegi on ilmselt selle siia unustand.#Arvatavasti.";
                auraootus = room_speed*16;
                break;
            case 1: tekst = "Sellise leige veega pole ju midagi peale hakata. #Siin pole piisavalt kuum ka et ta aurustuks. Pealegi kes niikuinii viitsiks seda ära OODATA.";
                if auraootus > 0{auraootus--;}else{
                    valik = 2;
                    valik1 = "Nõustun ja lahkun";
                    valik2 = "Aura ära!";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 2{
                            auraara = true;
                            linejump =1;
                        }else{auraara = false;}
                    }
                }
                break;
            case 2: dmode = false;
                break;
            case 3: tekst = "Ja 'A u r a  v e s i' auraski ära...#[potpotpotpot mulksmulks pshhh]";
                if !instance_exists(obj_veepudel){
                    dmode = false;
                }
                linejump = -1;
                break;
        }
    break;
//KUULDETORU
    case "obj_kuuldetoru":
        switch(argument0){
            case 0: tekst = "Sa leidsid kaevu tagant kuuldetoru!";
                break;
            case 1: toruleitud = true;
                dmode = false;
                break;
        }
    break;
//TALTSUTAJA
    case "obj_taltsutaja":
        switch(argument0){
            case 0: tekst = "Tema tundub tark. Istub nagu mõni šamaan.";
                if !taltsutatud{
                    valik = 3;
                    valik1 = "Tõin teile midagi";
                    valik2 = "   Teree!";
                    valik3 = "Mediteerite?";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 1 && toruleitud == true{
                            linejump =2;
                        }
                    }
                }else{
                    valik = 2;
                    valik1 = "[sõbramehelik pilk]";
                    valik2 = "Tahan torti!";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 2{
                            linejump = 8;
                            kooke ++;
                        }else{
                            linejump = 11;
                        }
                    }
                }
                break;
            case 1: tekst = "...#Tuleb välja, et ta on tumm...#või kurt...#või mõlemat?";
                break;
            case 2: dmode = false;
                break;
            case 3: tekst = "[võtab kuuldetoru vastu ning neelab selle alla]#I:'No tere,#mu kujutlustes oli rääkimine imelisem, aga pole vigagi.'";
                break;
            case 4: tekst = "I:'Mida te soovite, täidan kõik teie soovid!'";
                valik = 2;
                valik1 = "Kes te olete?";
                valik2 = "Tahan torti!";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 1{
                        linejump = 0;
                        kerateadmine = true;
                    }else{linejump = 3;}
                }
                break;
            case 5: tekst = "I:'Mida ma oskan enda kohta öelda...#Mulle meeldib liiv, muumiad, mu perekond, liivas suplemine, liivakellad, kohukesed ja liivast kohukesed.#Samuti austan ma Vana-Egiptuse kultuuri.'";
                valik = 1;
                valik1 = "Mida sa siin kõrbes teed? Istud niisama?";
                break;
            case 6: tekst = "I:'Hohohohoho! See pole ju kõrb, oh sind! Me viibime lihtlabases liivakastis, kas sa siis ei näe? Miks peaks kõrbel need sellised puust ääred olema mis liivakastidel on?#Peale selle...";
                break;
            case 7: tekst = "...kui siin juba tõe kuulutamiseks ja jüngrite valgustamiseks läks, kas näed seda kohutavat kollast irvakil kera seal keset liivakasti? See on vaata see lõunakeskuse rõõmupall. On tuulega siia lennanud!'";
                break;
            case 8: tekst = "I:'Kui on liivakoogi isu, siis nende peale olen ma meister!'";
                valik = 2;
                valik1 = "1 liivakook palun!";
                valik2 = "T-u-u-l :|";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 1{
                        linejump =0;
                        kooke ++;
                    }else{linejump = 1;}
                }
                break;
            case 9: tekst = "I: 'Aga palun!'##sul on taskus "+string(kooke)+" liivakooki";
                if !taltsutatud{linejump = -2;}else{linejump = -8;}
                break;
            case 10: tekst = "I: 'Tuul on tõesti tüütu, õnneks ma oskan natuke tuuleväänamist...'#[keskendub]";
                break;
            case 11: tekst = "I: 'Valmis! Taltsas teine!'";
                taltsutatud = true;
                break;
            case 12: tekst = "[vaatate üksteist sõbramehelikult õndsas poolvaikuses]";
                linejump = -11;
                break;
        }
    break;
//KAPP
    case "obj_kapp":
        switch(argument0){
            case 0: if !paha{
                    tekst = "Tordisõber T: 'Ma ei saa lasta teil välja minna, kallike, selline on kord. Paraku.'";
                    valik = 2;
                    valik1 = "Miks?";
                    valik2 = "Mul on torti.";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 2{linejump = 3;}
                    }
                }else{
                    tekst = "Tordisõber T: 'Sa ju lubasid...'##[ •`_´• ]";
                    linejump = 2;
                }
                break;
            case 1: tekst = "Tordisõber T: 'Me kaitseme kõrbevälist maailma enda koleduse eest, parem oma lõusta mitte sinna näidata.'";
                break;
            case 2: tekst = "Tordisõber T: 'Tegelt tihenenud-une-uuristaja-laine on see kes rõve on, aga ta on nähtamatu, seega meie oleme süüdi, kui ta kõrbest väljub eks.'";
                valik = 2;
                valik1 = "oi heaküll, siis küll";
                valik2 = "   Mul on torti.";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 3: dmode = false;
                break;
            case 4: tekst = "Sa näitad oma taskute sisu...";
                break;
            case 5:
                if !liiv{
                switch(kooke){
                    case 1: tekst = "Tordisõber T: 'No ole nüüd, see pole tort, vaid mingi märg liivapäts!#Aga noh... Nämnäm amps amps.'#[sööb su kooki]";
                        break;
                    case 0: tekst = "Tordisõber T: 'Okei kallike, sa oled veits imelik, aga ära teinekord valeta.'";
                        break;
                    default: tekst = "Tordisõber T: 'Ohhoo... Sul on "+string(kooke)+" liivakooki. Tordi mõõtu ei anna kahjuks välja, aga aitäh siiski. Nämnäm amps amps.'"
                        linejump = 1;
                }
                }else{
                    tekst = "Tordisõber T: 'T  A  S  K  U  L  I  I  W!#Aga noh... ega ma tegelt ära ei ütle. Nämnäm amps amps.'#[sööb su taskuliiva]";
                }
                break;
            case 6: kooke = 0;
                liiv = false;
                dmode = false;
                break;
            case 7: kooke = 0;
                liiv = false;
                tekst = "Tordisõber T: 'Kustkohast sa nii häid kooke said, ah?'"
                valik = 2;
                valik1 = "Ise tegin";
                valik2 = "Tema käest sain";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 8: tekst = "Tordisõber T: 'Valetad!#Hahahaha, sina?#Eiei, ei usu!#Nägudeni valevorst!'"
                if keyboard_check_pressed(vk_space){
                    linejump = -3;
                }
                break;
            case 9: tekst = "Tordisõber T: 'Okei ma pean korra sinna minema, aga luba et sa välja ei lähe eksole? lubad?'"
                valik = 2;
                valik1 = "luban";
                valik2 = "mai luba midagi";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = -4;}
                }
                break;
            case 10: kooke = 0;
                liiv = false;
                dmode = false;
                liigu = true;
                break;
        }
    break;
//LIIVAHUNNIK
    case "obj_liiv":
        switch(argument0){
            case 0: 
                if kooke == 0{
                    tekst = "Sa võtsid liivahunnikust taskusse natuke liiva.";
                    liiv = true;
                }else{tekst = "Sul on taskud täis."}
                break;
            case 1: dmode = false;
                break;
        }
    break;
//LOIK
    case "obj_loik":
        switch(argument0){
            case 0:
                if liiv{
                    tekst = "Sa võtsid taskus oleva liiva ja mätserdasid sellest vee abiga koogi.";
                    if keyboard_check_pressed(vk_space){
                        kooke ++;
                        //loikkasutatud = true;
                    }
                }else{tekst = "Väike veeloik"}
                break;
            case 1: liiv = false;
                dmode = false;
                break;
        }
    break;
//VÕLUR
    case "obj_volur":
        switch(argument0){
            case 0:
                tekst = "Völur: 'MINA OLEN VÖLUR, JA MUL ON 1 SUUUR SALADUS ;)";
                valik = 2;
                valik2 = "         nii?"
                if vaip = false{soiduvahend = "rula"}else{soiduvahend = "vaip"}
                valik1 = 'ega sa ei tea kus mu '+soiduvahend+' on?'
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 1{linejump = 3;}
                }
                /*valik = 2;
                valik1 = 'ok';
                valik2 = 'lase jalga rõve suli!';*/
                break;
            case 1:
                tekst = "Ma võtsin sult soki jalast, kui sa kukkumisest oimetu olid, ja panin selle kotti"
                valik = 2;
                valik2 = '    see ongi saladus?';
                valik1 = 'kas ma saaks selle tagasi?';
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 2:
                tekst = 'ega mina seda sulle tagasi ei anna, ma ütlesin kus see on - aeg on enda eest seista'
                linejump = 2;
                break;
            case 3:
                tekst = 'ei misasja, miks ma peaks sulle oma saladust rääkima? xd lase jalga'
                linejump = 1;
                break;
            case 4:
                tekst = 'hahahahaaha!'
                break;
            case 5:
                tekst = "...ja... vaata et sa mu kaksikvenna radarisse ei satu... ta võib kohati plahvatusliku iseloomuga olla"
                break;
            case 6:
                dmode = false;
                break;
        }
    break;
//SÕIDUVAHEND
    case "obj_prop_rula":
        if controlkits{//kits
            switch(argument0){
                case 0:
                    if vaip = false{
                        soiduvahend = "rula"
                    }else{
                        soiduvahend = "vaip"
                    }
                    tekst = "Ma pole sinu "+soiduvahend+".#aga ma näen et sul on juustu?";//EDIT
                    if juust > 0{
                        valik = 2;
                    }else{
                        valik = 1;
                    }
                    valik1 = "ei ole ju"
                    valik2 = "jaa";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 1{linejump = 1;}
                    }
                    break;
                case 1:
                    peatukk = 3;
                    controlkits = false;
                    room_goto(r_peatukk);
                    //soiduvahend_on = true;
                    dmode = false;
                    break;
                case 2:
                    dmode = false;
                    break;
            }
        }else{
            switch(argument0){//pp
                case 0:
                    if vaip = false{
                        soiduvahend = "rula"
                    }else{
                        soiduvahend = "vaip"
                    }
                    tekst = "sinu "+soiduvahend+".#hüppa peale?";
                    valik = 2;
                    valik1 = "jah"
                    valik2 = "ei";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 2{linejump = 1;}
                    }
                    break;
                case 1:
                    soiduvahend_on = true;
                    //dmode = false;
                    break;
                case 2:
                    dmode = false;
                    break;
            }
        }
    break;
//VAHESEIN
    case "obj_vahesein":
        switch(argument0){
            case 0: tekst = "Kui sa ise ei näe, siis see on ületamatu takistus sinu edasi minekule.";
                break;
            case 1: tekst = "Ei pääse läbi.#Läbipääsmatu.";
                break;
            case 2: dmode = false;
                break;
        }
    break;
//PORTAAL
    case "obj_portaal":
        switch(argument0){
            case 0: tekst = "P O R T A A L#T E I S E#D I M E N S I OO N I";
                break;
            case 1: tekst = "Sisene peeglitagusesse maailma?";
                valik = 2;
                valik1 = "minek";
                valik2 = "seekord mitte";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 2: 
                room_goto(r_pre_nether)
                dmode = false;
                break;
            case 3: dmode = false;
                break;
        }
    break;
//KITS
    case "obj_kits":
        switch(argument0){
            case 0: tekst = "kits: 'tead kuule mul on üks lahe projekt võinoh selline mind control masin vaata. Äkki sa tahad proovida? Et kui sa selle pähe pane... aa.. nojah ee.'";
                break;
            case 1: tekst = "'Et kui sa selle jalga paned siis sa saad minu jalgu kontrollida tegelikult. Et kas sa tahaks katsejänes olla või nii?'";
                valik = 2;
                valik1 = "okei, teeme ära";
                valik2 = "kõlab kahtlaselt";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 2: controlkits = true;
                dmode = false;
                break;
            case 3: dmode = false;
                break;
        }
    break;
//HIIR
    case "obj_hiir":
        if !controlkits{
            switch(argument0){
                case 0: tekst = "hiir: 'tervist, anna käppa ka'";
                    valik = 2;
                    valik1 = "eeehae ee..";
                    valik2 = "mul oleks abi vaja";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 1{linejump = 1;}
                    }
                    break;
                case 1: 
                    if valu{
                        tekst = "oota ma mäletan et sa ütlesid et saei vaja mind? malen küll sellest ammu üle saand aga lihtsalt et nnaerda su abituse üle siis ma vist ei taha abistada sind#ära südamesse võta";
                    }else{
                        linejump = 1;
                        if vaip{
                            tekst = "kuidas ma saaks sind aidata? see seal su vaip? ma ütlen kitsele et ta selle ära tooks";
                        }else{
                            tekst = "kuidas ma saaks sind aidata? see seal su rula? ma ütlen kitsele et ta selle ära tooks";
                        }
                    }
                    break;
                case 2: dmode = false;
                    break;
                case 3: tekst = "kits! viitsid selle ära tuua?##ta ütles et viitsib, aga ta tahab et sa enne ta leiutist prooviks.";
                    linejump = -2;
                    break;
            }
        }else{
            switch(argument0){
                case 0: tekst = "hiir: 'tsau kits, anna käppa ka'";
                    if juust == 0{
                        valik = 1;
                    }else{
                        valik = 2;
                    }
                    valik1 = "'annad käppa'";
                    valik2 = "a kassa juustu tahad?";
                    //log
                    if keyboard_check_pressed(vk_space){
                        if selec == 1{linejump = 1;}
                    }
                    break;
                case 1: tekst = "kuule tead juust on mega maitsev, aga ma olen vegan praegu. aga tänan pakkumast nagu, väga lahke sust";
                    break;
                case 2: dmode = false;
                    break;
            }
        }
    break;
//JUUSTUMANG
    case "obj_juustumang":
        switch(argument0){
            case 0: 
                if juust == 0 || juust < array_length_1d(slaud){
                    tekst = "sa tahad juustu? okei, sa saad ühe juustu, kui sa lahendad (1★) star battle puzzle.";
                    valik = 3;
                    valik1 = "ei";
                    valik2 = "jah";
                    valik3 = "ma ei mõista";
                }else{
                    tekst = "rohkem juustu pole. (tegelt said mõistatused otsa)";
                    valik = 1;
                    valik1 = "okei";
                    //valik2 = "teeksin uuesti";
                }
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{
                        instance_create(room_width/2-200,60,obj_star_puzzle); 
                    }else if selec == 1{
                        linejump = 2;
                    }else{
                        url_open("https://www.google.com/search?q=ma+ei+moista");
                        linejump = 2;
                    }
                }
                break;
            case 1: tekst = "! s t a r ! b a t t l e !";
                //log
                if instance_exists(obj_star_puzzle){
                    linejump = -1;
                }else{
                    linejump = 0;
                }
                break;
            case 2: tekst = "palju õnne, siin on su "+string(juust)+". juust";
                break;
            case 3: dmode = false;
                break;
        }
    break;
//PP
    case "obj_pp":
        switch(argument0){
            case 0: tekst = "kuidas läheb, mina?";
                valik = 2;
                valik1 = "sina oled ainult minu jalad, jalg";
                valik2 = "           normilt";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 1: tekst = "ma teen otsuseid, aju. meid ei ole päriselt olemas, mina olen see kes teab mida jumal teab ;)";
                linejump = 1;
                break;
            case 2: tekst = "norm";
                break;
            case 3: dmode = false;
                break;
        }
    break;
//SALAPÄRA
    case "obj_salapara":
        switch(argument0){
            case 0: tekst = "'Sa oled vaba'";
                break;
            case 1: tekst = "'Mida teha?'";
                break;
            case 2: tekst = "...";
                valik = 2;
                valik1 = "...";
                valik2 = "tahan elada";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 3: 
                eksperiment = true;
                dmode = false;
                break;
            case 4: tekst = "Selleks pead sa minema nii kaugele, et võrk katab su maailma";
                break;
            case 5: dmode = false;
                break;
        }
    break;
//SYDA
    case "obj_syda":
        switch(argument0){
            case -1: game_end();
                break;
            case 0: 
                if bedtime > uptime && 8 > (24 - (bedtime - uptime)) || bedtime < uptime && 8 > (uptime - bedtime){
                    tekst = "(ノಠ益ಠ)ノ oioi (◎_◎)#Sa pole piisavalt maganud ja süda ütles üles.#Kahetsusväärne viis suremiseks...";
                    ini_open("save_borges.ini");
                    ini_section_delete("s");
                    ini_close();
                    linejump = -2;
                }else{
                    tekst = "Süda näib olevat heas korras";
                }
                break;
            case 1: tekst = "Syda: 'Lõpuks ometi jõudsid! Kuula nüüd hoolega. Sa oled suures ohus!'";
                break;
            case 2: tekst = "Syda: 'Nii kui ma rääkimise lõpetan, hakkab püramiid lõhestuma ja siis sa pead jalgadele valu andma'";
                break;
            case 3: tekst = "Syda: 'Sa pead põgenema loode suunas, saad aru?#Kohe kui tuled põlema lähevad!#Sa tead ilmakaari ju'";
                valik = 2;
                valik1 = "eee";
                valik2 = "jah";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 1;}
                }
                break;
            case 4: tekst = "Syda: 'Loe on põhja ja lääne vahel#vasakule üles noh!'";
                break;
            case 5: tekst = "Syda: 'Niisiis, ole valmis pagema!#Nii kaugele loodesse kui võimalik!'"; //ja ära peatu!'";
                valik = 1;
                valik1 = "olen valmis";
                break;
            case 6: 
                if !instance_exists(obj_freq2){
                    instance_create(100,100,obj_freq2);
                }
                dmode = false;
                break;
        }
    break;
//JALG2
    case "obj_jalg2":
        switch(argument0){
            case 0: 
                tekst = "zzz";
                valik = 2;
                valik1 = "tere";
                valik2 = "vabandage";
                //log
                if keyboard_check_pressed(vk_space){
                    with(obj_jalg2){
                        mag = false;
                    }
                }
                break;
            case 1: tekst = "uu, jah, hommikust";
                valik = 1;
                valik1 = "vabandust, ajasin teid üles";
                break;
            case 2: tekst = "ah ei, pole lugu. Meeldib magada lihtsalt";
                valik = 1;
                valik1 = "mul on ka vahel see magamise värk";
                break;
            case 3: tekst = "Päriselt? Oota, kuule, sa tundud kuidagi tuttav.#Äkki me oleme sama keha jalad! Kas sa tunned nagu sa oleks õiges kohas?";
                valik = 2;
                valik1 = "vist tunnen";
                valik2 = "minu sokk!";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = 2;}
                }
                break;
            case 4: tekst = "Tule minu järel,#ma viin sind meie isa juurde.";
                //log
                if keyboard_check_pressed(vk_space){
                    with(obj_jalg2){
                        liik = true;
                    }
                }
                break;
            case 5: dmode = false;
                break;
            case 6: tekst = "See mis mul jalas on? Ma arvan et sa eksid, mu vanaema kudus selle mulle :D#Sul on ka selline?";
                valik = 1;//valik = 2;
                valik1 = "mhmh, kadunud...";
                /*valik2 = "sa valetad!";
                //log
                if keyboard_check_pressed(vk_space){
                    //edasi alla lükkamine
                }*/
                break;
            case 7: tekst = "See on tõesti halvasti...#Aga tead, ma võin enda oma sulle anda, jalad peavad ikka soojas olema.";
                valik = 1;
                valik1 = "see on küll tore, aitäh";
                //log
                if keyboard_check_pressed(vk_space){
                    sokk = sokivalik;
                    sokivalik = 0;
                    linejump = -4;
                }
                break;
        }
    break;
//NNNN
    case "obj_n":
        switch(argument0){
            case 0: tekst = "n1";
                break;
            case 1: tekst = "n2";
                valik = 2;
                valik1 = "n3";
                valik2 = "n1";
                //log
                if keyboard_check_pressed(vk_space){
                    if selec == 2{linejump = -2;}
                }
                break;
            case 2: 
                dmode = false;
                with(obj_jalg2){
                    liik = true;
                }
                break;
        }
    break;
}

if keyboard_check_released(vk_space){
    audio_play_sound(s_leht,0.5,false);
}

show_debug_message("loom= "+loom);
show_debug_message("line="+string(line));

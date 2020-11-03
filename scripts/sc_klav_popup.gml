switch(step){
    case 0: msg = show_question_async("?no ruutaivalk lus sak");
        break;
    case 2: msg = show_question_async("igaksjuhuks ütlen, et klaviatuur on kohustuslik ja väga tähtis. sul on seda vaja.#vajuta seda nuppu, kus peal on rohkem tähti, kui sa ei ole minuga nõus");
        break;
    case 4: msg = show_question_async("asi on lihtsalt selles, et kui pole klaviatuuri, siis ei saa pikka klahvi vajutada ega Esc'i peal hoida. isegi nooli ei saa vajutada, rääkimata f11'est.#sa ei usu mind?#NB: 'yes' ei ole 'ei' ja 'no' ei ole 'jah'");
        break;
    case -1: msg = show_message_async("??skaep amadnehät igesi ees adim ?Yes");
        break;
    case 1: msg = show_message_async("kui sa nii arvad, siis pean suga hüvasti jätma. hüvasti");
        break;
    case 3: msg = show_message_async("sa tahad öelda, et sulle ei meeldi pikk klahv ja nooled? f11 ajab sulle iivelduse peale? esc on tüütu? okei. sa oled kalk ja südametu inimene ja ma ei taha sind enam kunagi näha");
        break;
    case 6: msg = show_question_async("oled sa kindel?");
        break;
    case 8: msg = show_message_async("ära jama. ikka oled kindel ju");
        break;
    case 7: 
    case 5: msg = show_message_async("norm");
}
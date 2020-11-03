if distance_to_point(obj_pp.x+36,obj_pp.y+100) < 20 || distance_to_point(obj_pp.x-36,obj_pp.y+100) < 20 || distance_to_point(obj_pp.x,obj_pp.y+98) < 20 || distance_to_point(obj_pp.x,obj_pp.y+104) < 20{
    show_debug_message("lähedal= "+object_get_name(object_index));
    if !instance_exists(obj_textbox){
        if loom != object_get_name(object_index){loom = object_get_name(object_index);}
        if sc_valmis(x,y){
            if !instance_exists(obj_spacebar){
                instance_create(room_width/2, room_height - 6, obj_spacebar);
                audio_play_sound(s_tervitus,1,false);
            }
        }else if !paigal{
            if instance_exists(obj_spacebar){
                with(obj_spacebar){instance_destroy();}
                audio_stop_sound(s_tervitus);
            }
        }
    }
}
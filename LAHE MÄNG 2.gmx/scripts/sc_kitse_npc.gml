if distance_to_point(obj_kits.x+16,obj_kits.y+8) < 20 || distance_to_point(obj_kits.x-16,obj_kits.y+8) < 20 || distance_to_point(obj_kits.x,obj_kits.y) < 20{
    show_debug_message("lähedal= "+object_get_name(object_index));
    if !instance_exists(obj_textbox){
        if loom != object_get_name(object_index){loom = object_get_name(object_index);}
        if sc_kits_valmis(x,y){
            if !instance_exists(obj_spacebar){
                instance_create(room_width/2, room_height - 6, obj_spacebar);
                audio_play_sound(s_tervitus,1,false);
            }
        }else if !kpaigal{
            if instance_exists(obj_spacebar){
                with(obj_spacebar){instance_destroy();}
                audio_stop_sound(s_tervitus);
            }
        }
    }
}else if !kpaigal{
    if instance_exists(obj_spacebar){
        with(obj_spacebar){instance_destroy();}
        audio_stop_sound(s_tervitus);
    }
}

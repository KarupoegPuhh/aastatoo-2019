//if !window_get_fullscreen(){
    if
    display_mouse_get_x() > window_get_x() && window_get_x() + window_get_width() > display_mouse_get_x() &&
    display_mouse_get_y() > window_get_y() && window_get_y() + window_get_height() > display_mouse_get_y()
    {
        return true
    }
    return false
//}
//return false
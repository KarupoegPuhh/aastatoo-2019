if bedtime > uptime{
    return current_hour >= bedtime || current_hour < uptime
}
return current_hour >= bedtime && current_hour < uptime

//draw_text(30,30,string(current_hour))
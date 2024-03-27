
draw_set_color(c_red); // Set the color of the health bar
draw_rectangle(player_healthbar_x, player_healthbar_y, player_healthbar_x + player_healthbar_width, player_healthbar_y + player_healthbar_height, false); // Draw the outline of the health bar

draw_set_color(c_black);
var player_lost_health_width = player_healthbar_width - player_damage_amount;
draw_rectangle(player_healthbar_x + player_healthbar_target_width, player_healthbar_y, player_healthbar_x + player_healthbar_width, player_healthbar_y + player_healthbar_height, true)

draw_set_color(c_lime); // Set the color of the filled health bar
var player_healthbar_fill_width = (player_current_health / player_max_health) * player_healthbar_width;
draw_rectangle(player_healthbar_x, player_healthbar_y, player_healthbar_x + player_healthbar_fill_width, player_healthbar_y + player_healthbar_height, true); // Draw the filled portion of the health bar
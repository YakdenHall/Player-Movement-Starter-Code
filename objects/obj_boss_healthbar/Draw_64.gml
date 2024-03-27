draw_set_color(c_white); // Set the color of the boss's name

draw_text(healthbar_x, healthbar_y - 20, boss_name); // Draw the boss's name above the health bar

draw_set_color(c_maroon); // Set the color of the health bar outline
draw_rectangle(healthbar_x, healthbar_y, healthbar_x + healthbar_width, healthbar_y + healthbar_height, false); // Draw the outline of the health bar

// Draw yellow portion for lost health
draw_set_color(c_black);
var lost_health_width = healthbar_width - damage_amount;
draw_rectangle(healthbar_x + healthbar_target_width, healthbar_y, healthbar_x + healthbar_width, healthbar_y + healthbar_height, true);

draw_set_color(c_black); // Set the color of the filled health bar
draw_rectangle(healthbar_x, healthbar_y, healthbar_x + healthbar_target_width, healthbar_y + healthbar_height, true); // Draw the filled portion of the health bar
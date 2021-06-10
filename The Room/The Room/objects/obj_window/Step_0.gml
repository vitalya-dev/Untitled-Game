switch (state) {
  case "NORMAL":
    if (position_meeting(mouse_x, mouse_y, self) and mouse_check_button_pressed(mb_left)) {
      mouse_last_pos_x = mouse_x;
      mouse_last_pos_y = mouse_y;
      state = "DRAG";
    }
    break;
  case "DRAG":
    x += mouse_x - mouse_last_pos_x;
    y += mouse_y - mouse_last_pos_y;
    mouse_last_pos_x = mouse_x;
    mouse_last_pos_y = mouse_y;
    if (mouse_check_button_released(mb_left)) {
      state = "NORMAL";
    }
    break;
}

close_btn.x = bbox_right;
close_btn.y = bbox_top + 1;

if (content != noone) {
  content.x = self.x;
  content.y = self.y;
  content.depth = depth - 1;
}
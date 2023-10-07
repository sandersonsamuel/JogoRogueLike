window_set_fullscreen(true)
cam_largura = camera_get_view_width(view_camera[0])
cam_altura = camera_get_view_height(view_camera[0])
cam_veloc = .1
target = obj_player

global.meioh = view_xview[0] + view_wview[0]/2;
global.meiov = view_yview[0] + view_hview[0]/2;

global.menu_objects = [obj_menu_resume, obj_menu_restart, obj_menu_voltar_menu]

global.pause = false
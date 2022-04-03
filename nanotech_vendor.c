#include "npea00385.h"

struct Moby {
    // The moby position for collision purposes. Usually should not be touched.
    vec4 coll_pos;
    // The moby position.
    vec4 pos;
    // The moby state.
    char state;
    // The texture mode.
    char texture_mode;
    // The moby opacity.
    unsigned short opacity;
    // The moby model.
    void* model;
    // The parent moby, if existing.
    struct moby* parent;
    // The 3D scaling applied to the model.
    float scale;
    // Unknown, 0x30
    char unk_30;
    // Whether or not the moby is visible (readonly).
    char visible;
    // The distance at which the moby will start fading out.
    short render_distance;
    // Unknown, 0x34
    void* unk_34;
    // Controls the coloring of the moby.
    color color;
    // Controls the shading of the moby, through mechanisms unknown.
    unsigned int shading;
    // The moby rotation in radians. Typically only Z needs to be changed.
    vec4 rot;
    // The previous frame number of the current animation.
    char prev_anim_frame;
    // The current frame number of the current animation.
    char curr_anim_frame;
    // asdf
    char asdf[0x26];
    // The moby's pVars.
    void* pvars;
    // asdf2
    char asdf2[0x2A];
    // The type of moby it is.
    unsigned short type;
    // asdf3
    char asdf3[0x58];
};

#define has_premium_nanotech (*((char*)0x0096bff4))
#define has_ultra_nanotech (*((char*)0x0096bff5))

#define show_persistent_message ((int (*)(int, int))0x11aeec)
#define play_ilm ((void (*)(int, int))0x167e60)

#define items_map ((char*)0xB00050)

void _start(struct Moby* self) {
	if (items_map[0x34] == 0) {
		if (player_bolts < 4000) {
			show_persistent_message(1, 0x2720);
		} else {
			int message_shown = show_persistent_message(1, 0x271e);
			
			if ((pressed_buttons & BTN_TRI) != 0 && message_shown != 0) {
				unlock_item(0x34);
				player_bolts -= 4000;
				play_ilm(0, 0);
				
				self->state = 1;
			}
		}
	} else if (items_map[0x35] == 0 && has_premium_nanotech == 1) {
		if (player_bolts < 30000) {
			show_persistent_message(1, 0x2721);
		} else {
			int message_shown = show_persistent_message(1, 0x271f);
			
			if ((pressed_buttons & BTN_TRI) != 0 && message_shown != 0) {
				unlock_item(0x35);
				player_bolts -= 30000;
				play_ilm(1, 0);
				
				self->state = 1;
			}
		}
	}
	
	return;
}
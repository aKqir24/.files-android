/* Taken from https://github.com/djpohly/dwl/issues/466 */
#define COLOR(hex)    { ((hex >> 24) & 0xFF) / 255.0f, \
                        ((hex >> 16) & 0xFF) / 255.0f, \
                        ((hex >> 8) & 0xFF) / 255.0f, \
                        (hex & 0xFF) / 255.0f }

static const float rootcolor[]             = COLOR(0x1d2419ff);
static uint32_t colors[][3]                = {
	/*               fg          bg          border    */
	[SchemeNorm] = { 0xc6c8c5ff, 0x1d2419ff, 0x6a7761ff },
	[SchemeSel]  = { 0xc6c8c5ff, 0x72A783ff, 0xA6AD6Fff },
	[SchemeUrg]  = { 0xc6c8c5ff, 0xA6AD6Fff, 0x72A783ff },
};

// Wall decoration - also used on grass area

textures/skeet_garden/decal_white
{
	qer_editorimage textures/skeet_garden/decal_white.tga
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/skeet_garden/decal_white.tga
		blendfunc filter
	}
}

// Used for the foot marks standing position

textures/skeet_garden/decal_grey
{
	qer_editorimage textures/skeet_garden/decal_grey.tga
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks	// Thanks to happyday for this
	{
		map textures/skeet_garden/decal_grey.jpg
		blendfunc gl_dst_color gl_src_color
	}
}

// General purpose light shader, for lignts

textures/skeet_garden/light1
{
	qer_editorimage textures/skeet_garden/light1.tga
	q3map_surfacelight 8000
	surfaceparm nomarks
	surfaceparm nodamage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/skeet_garden/light1.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/skeet_garden/light1_blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

// Display screen for thanks

textures/skeet_garden/screen
{
	qer_editorimage textures/skeet_garden/frame1.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 200
	surfaceparm trans
	q3map_lightimage map textures/skeet_garden/frame2.tga
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/frame1.tga
	}
}

// Display screen for previous winners

textures/skeet_garden/screen2
{
	qer_editorimage textures/skeet_garden/frame2.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 200
	surfaceparm trans
	q3map_lightimage map textures/skeet_garden/frame2.tga
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/frame2.tga
	}
}

// Display screen for something else

textures/skeet_garden/screen3
{
	qer_editorimage textures/skeet_garden/frame3.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 200
	surfaceparm trans
	q3map_lightimage map textures/skeet_garden/frame3.tga
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/frame3.tga
	}
}

// Reloader instructions, illuminated

textures/skeet_garden/reloader
{
	qer_editorimage textures/skeet_garden/reloader.tga
	q3map_surfacelight 2000
	surfaceparm nomarks
	surfaceparm nodamage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/skeet_garden/reloader.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

// Decorative metally for door frames and trim

textures/skeet_garden/steel1
{
	qer_editorimage textures/skeet_garden/steel1.tga
	{
		map textures/skeet_garden/steel1.tga
		rgbGen identity
	}
	{
		clampmap textures/skeet_garden/chrome1.tga
		blendfunc add
		rgbGen const ( 0.188235 0.188235 0.407843 )
		tcGen environment
	}
	{
		map textures/skeet_garden/steel1.tga
		blendfunc filter
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_src_alpha
		tcGen lightmap
	}
}

// MTC promo video

textures/skeet_garden/video
{
	qer_editorimage textures/skeet_garden/screen.tga
	surfaceparm nolightmap
	{
		videomap mtc.roq
		rgbGen identity
	}
	{
		map textures/skeet_garden/screen.tga
		blendfunc blend
		rgbGen Vertex
	}
}

// The skybox

textures/skeet_garden/thesky
{
	qer_editorimage env/skeet_garden/skeet_garden_up.tga
	q3map_lightRGB .92 .9 1
	q3map_skylight 800 6
	surfaceparm nomarks
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nodlight
	q3map_lightmapFilterRadius 0 8
	q3map_sunExt 1.000000 0.997119 0.99 260 90 55 2 4
	q3map_nolightmap
	skyparms env/skeet_garden/skeet_garden - -
}

// No damage for the floor - stops the bots from dying on impact with mixers

textures/skeet_garden/cement:q3map
{
    surfaceparm nodamage
}

textures/skeet_garden/carpet1:q3map
{
    surfaceparm nodamage
}

// The illuminated screen on the skeet sign board

models/mapobjects/skeet_garden/skeetsign
{
	qer_editorimage textures/skeet_garden/skeetsign.jpg
	q3map_surfacelight 2000
	surfaceparm nomarks
	surfaceparm nodamage
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/skeet_garden/skeetsign.jpg
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

// Re-used from 2012 map

textures/skeet_garden/walllight
{
	qer_editorimage textures/skeet_garden/walllight.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 7000
	surfaceparm trans
	q3map_lightimage textures/skeet_garden/walllight.tga
	q3map_forcemeta
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/walllight.tga
	}
}

// Usually from common but added because one of my common shaders is wrong

textures/skeet_garden/hint // should NOT use surfaceparm hint.. strange but true
{
	qer_nocarve
	qer_trans 0.30
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm structural
	surfaceparm trans
	surfaceparm noimpact
	surfaceparm hint	// ydnar: yes it should.
}

textures/skeet_garden/skip
{
	qer_editorimage textures/skip.tga
	qer_nocarve
	qer_trans 0.30
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm structural
	surfaceparm trans
	surfaceparm noimpact
	surfaceparm skip
}

// Illuminated wall box signs

textures/skeet_garden/wall_reload
{
	qer_editorimage textures/skeet_garden/wall_reload.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 800
	surfaceparm trans
	q3map_lightimage textures/skeet_garden/wall_reload.tga
	q3map_forcemeta
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/wall_reload.tga
	}
}

// SevenofNines gold, silver bronze graphic, made transparent

textures/skeet_garden/wall_trophy
{
	qer_editorimage textures/skeet_garden/wall_trophy.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 800
	surfaceparm trans
	q3map_lightimage textures/skeet_garden/wall_trophy.tga
	q3map_forcemeta
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/wall_trophy.tga
	}
}

// Wall box illuminated sign for sevens room

textures/skeet_garden/wall_seven
{
	qer_editorimage textures/skeet_garden/wall_seven.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 800
	surfaceparm trans
	q3map_lightimage textures/skeet_garden/wall_seven.tga
	q3map_forcemeta
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/wall_seven.tga
	}
}

// Wall box illuminated sign for shooting area

textures/skeet_garden/wall_shooting
{
	qer_editorimage textures/skeet_garden/wall_shooting.tga
	light 1
	surfaceparm nomarks
	q3map_surfacelight 800
	surfaceparm trans
	q3map_lightimage textures/skeet_garden/wall_shooting.tga
	q3map_forcemeta
	{
		map $lightmap
		rgbGen identity
		blendfunc gl_dst_color gl_src_color
	}
	{
		map textures/skeet_garden/wall_shooting.tga
	}
}

// Mikey Fikeys Reflective glass shader from CMM wiki

models/mapobjects/fv_ss_trophy/trophy
{
	qer_editorimage models/mapobjects/fv_ss_trophy/trophy.tga
	q3map_forcemeta
	{
		map models/mapobjects/fv_ss_trophy/trophy.tga
	}
	{
		map textures/skeet_garden/chrome2.tga
		tcgen environment
		blendFunc GL_ONE GL_ONE
	}
	{
		map models/mapobjects/fv_ss_trophy/trophy.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	}
	{
		map $lightmap
		blendfunc GL_DST_COLOR GL_SRC_COLOR
	}
}

// Frankies trophy ribbons require this

models/mapobjects/fv_ss_trophy/ribbon
{
	cull none
	q3map_forcemeta
	{
		map models/mapobjects/fv_ss_trophy/ribbon.tga
	}
}

// HappyDay Shaders
//
// Cloth in trophy room

textures/skeet_garden/cloth:q3map
{
	cull none
	deformVertexes wave 8 sin .5 .5 0 .5
}

// Marble for pillars in trophy room

textures/skeet_garden/marble:q3map
{
	q3map_forcemeta
}

// Wooden trims on floors and ceilings

textures/skeet_garden/grotwood:q3map
{
	q3map_forcemeta
}


// Wooden trims on floors and ceilings

textures/skeet_garden/wood:q3map
{
	q3map_forcemeta
}

// Carpet trims

textures/skeet_garden/carpet_trim
{
	q3map_forcemeta
	polygonOffset
	nopicmip
	{
		map textures/skeet_garden/carpet_trim.tga
		alphafunc GE128
		rgbGen const ( 0.8 0.8 0.8 )
		depthWrite
	}
	{
		map $lightmap
		blendfunc filter
		depthFunc equal
	}
}

// Decals

textures/skeet_garden/decal01
{
	qer_editorimage textures/skeet_garden/decal01.tga
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	q3map_bounceScale 0.0
	{
		map textures/skeet_garden/decal01.tga
		blendfunc filter
	}
}

textures/skeet_garden/decal03
{
	qer_editorimage textures/skeet_garden/decal03.tga
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	q3map_bounceScale 0.0
	{
		map textures/skeet_garden/decal03.tga
		blendfunc filter
	}
}

textures/skeet_garden/decal04
{
	qer_editorimage textures/skeet_garden/decal04.tga
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	q3map_bounceScale 0.0
	{
		map textures/skeet_garden/decal04.tga
		blendfunc filter
	}
}

textures/skeet_garden/decal_lamps
{
	qer_editorimage textures/skeet_garden/decal_lamps.tga
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	polygonOffset
	q3map_bounceScale 0.0
	{
		map textures/skeet_garden/decal_lamps.tga
		blendfunc filter
	}
}

textures/skeet_garden/plant01
{
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm playerclip
	surfaceparm nonsolid
	surfaceparm nomarks
	q3map_forcemeta
	cull none
	nopicmip
	{
		map textures/skeet_garden/plant01.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/skeet_garden/plant02
{
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm playerclip
	surfaceparm nonsolid
	surfaceparm nomarks
	q3map_forcemeta
	cull none
	nopicmip
	{
		map textures/skeet_garden/plant02.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/skeet_garden/plant03
{
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm playerclip
	surfaceparm nonsolid
	surfaceparm nomarks
	q3map_forcemeta
	cull none
	nopicmip
	{
		map textures/skeet_garden/plant03.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/skeet_garden/plant04
{
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm playerclip
	surfaceparm nonsolid
	surfaceparm nomarks
	q3map_forcemeta
	cull none
	nopicmip
	{
		map textures/skeet_garden/plant04.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/skeet_garden/banana
{
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/skeet_garden/banana.tga
		blendfunc filter
	}
}

textures/skeet_garden/orange
{
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/skeet_garden/orange.tga
		blendfunc filter
	}
}

textures/skeet_garden/raspberry
{
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/skeet_garden/raspberry.tga
		blendfunc filter
	}
}

textures/skeet_garden/coconut
{
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/skeet_garden/coconut.tga
		blendfunc filter
	}
}

textures/skeet_garden/mango
{
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks
	{
		map textures/skeet_garden/mango.tga
		blendfunc filter
	}
}

// Added goreclan decal

textures/skeet_garden/gore_decal
{
	polygonOffset
	nomipmaps
	nopicmip
	surfaceparm trans
	surfaceparm nomarks	// Thanks to happyday for this
	{
		map textures/skeet_garden/gore_decal.jpg
		blendfunc gl_dst_color gl_src_color
	}
}

// Added this shader for the skeet model to include some glow

models/mapobjects/skeetshoot/skeetmodel
{
	q3map_surfacelight 2500
	q3map_forcemeta
	{
		map $lightmap
		rgbGen identity
	}
	{
		map models/mapobjects/skeetshoot/skeetmodel.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map models/mapobjects/skeetshoot/skeetmodel_g.tga
		blendfunc GL_ONE GL_ONE
	}
}


textures/skeetshoot/skeetexplosion
{
    qer_editorimage models/mapobjects/skeetshoot/explode/explosion5.tga
    cull disable
    {
        animmap 8 models/mapobjects/skeetshoot/explode/explosion1.tga models/mapobjects/skeetshoot/explode/explosion2.tga models/mapobjects/skeetshoot/explode/explosion3.tga models/mapobjects/skeetshoot/explode/explosion4.tga models/mapobjects/skeetshoot/explode/explosion5.tga models/mapobjects/skeetshoot/explode/explosion6.tga models/mapobjects/skeetshoot/explode/explosion7.tga models/mapobjects/skeetshoot/explode/explosion8.tga
        rgbGen wave inversesawtooth 0 1 0 8
        blendfunc add
    }
    {
        animmap 8 models/mapobjects/skeetshoot/explode/explosion1.tga models/mapobjects/skeetshoot/explode/explosion2.tga models/mapobjects/skeetshoot/explode/explosion3.tga models/mapobjects/skeetshoot/explode/explosion4.tga models/mapobjects/skeetshoot/explode/explosion5.tga models/mapobjects/skeetshoot/explode/explosion6.tga models/mapobjects/skeetshoot/explode/explosion7.tga models/mapobjects/skeetshoot/explode/explosion8.tga
        rgbGen wave sawtooth 0 1 0 8
        blendfunc add
    }
}

textures/skeet_garden/gallery
{
	q3map_nonplanar
	q3map_shadeAngle 120
	{
		map textures/skeet_garden/gallery.jpg
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
}

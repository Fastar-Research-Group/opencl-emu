il_cs_2_0
dcl_cb cb0[9] ; Constant buffer that holds ABI data
dcl_literal l0, 4, 1, 2, 3
dcl_literal l1, 0x00FFFFFF, -1, -2, -3
dcl_literal l2, 0x0000FFFF, 0xFFFFFFFE,0x000000FF,0xFFFFFFFC
dcl_literal l3, 24, 16, 8, 0xFFFFFFFF
dcl_literal l4, 0xFFFFFF00, 0xFFFF0000, 0xFF00FFFF, 0xFFFF00FF
dcl_literal l5, 0, 4, 8, 12
dcl_literal l6, 32, 32, 32, 32
dcl_literal l7, 24, 31, 16, 31
mov r1013, cb0[8].x
call 1120;$
endmain
func 1120 ; __OpenCL_hello_kernel
mov r1019, l1.0
dcl_max_thread_per_group 128 
dcl_arena_uav_id(8)
mov r0.z, vThreadGrpIdFlat.x
mov r1022.xyz0, vTidInGrp.xyz
mov r1023.xyz0, vThreadGrpId.xyz
imad r1021.xyz0, r1023.xyz0, cb0[1].xyz0, r1022.xyz0
iadd r1021.xyz0, r1021.xyz0, cb0[6].xyz0
iadd r1023.xyz0, r1023.xyz0, cb0[7].xyz0
mov r1023.w, r0.z
ishl r1023.w, r1023.w, l0.z
mov r1018.x, l0.0
mov r1015.x, cb0[8].x
dcl_literal l9, 0x00000000, 0x00000000, 0x00000000, 0x00000000; f32:i32 0
dcl_literal l11, 0x00000001, 0x00000001, 0x00000001, 0x00000001; f32:i32 1
dcl_literal l10, 0x00000002, 0x00000002, 0x00000002, 0x00000002; f32:i32 2
dcl_literal l12, 0x00000068, 0x00000068, 0x00000068, 0x00000068; f32:i32 104
dcl_literal l8, 0xffffffff, 0xffffffff, 0xffffffff, 0xffffffff; f32:i32 4294967295
dcl_cb cb2[7]
call 1138 ; hello
ret
endfunc ; __OpenCL_hello_kernel
;ARGSTART:__OpenCL_hello_kernel
;version:1:4:53
;device:cedar
;uniqueid:1120
;memory:hwprivate:0
;memory:hwlocal:0
;memory:datareqd
;function:1:1138
;uavid:8
;ARGEND:__OpenCL_hello_kernel
func 1138 ; hello                       ; @__OpenCL_hello_kernel
; BB#0:                                 ; %get_local_size.exit
	mov r257, r1021.xyz0
	mov r258, r1021.xyz0
	mov r259, cb0[1].xyz0
	mov r259, r259.x000 
	mov r260, l8
	iadd r259.x___, r259.xxxx, r260.xxxx
	mov r257, r257.x000 
	ine r259.x___, r257.xxxx, r259.xxxx
	if_logicalnz r259.xxxx
	else
	mov r258, r258.y000 
	mov r259, cb0[1].xyz0
	mov r259, r259.y000 
	mov r260, l8
	iadd r259.x___, r259.xxxx, r260.xxxx
	ieq r259.x___, r258.xxxx, r259.xxxx
	if_logicalnz r259.xxxx
	mov r259, r1023.xyz0
	mov r260, r1023.xyz0
	mov r261, l9
	mov r262.xy__, cb0[8].yz
	mov r262, r262.y000 
	ieq r261.x___, r262.xxxx, r261.xxxx
	mov r259, r259.x000 
	mov r260, r260.y000 
	if_logicalnz r261.xxxx
	else
	mov r261, l9
	mov r261.xy__, cb0[8].yz
	mov r263, cb0[1].xyz0
	mov r264, r263.y000 
	mov r265, r1022.xyz0
	mov r266, r265.z000 
	imul r264.x___, r266.xxxx, r264.xxxx
	mov r266, r265.y000 
	iadd r264.x___, r264.xxxx, r266.xxxx
	mov r263, r263.x000 
	imul r263.x___, r264.xxxx, r263.xxxx
	mov r264, r265.x000 
	iadd r263.x___, r263.xxxx, r264.xxxx
	mov r264, r261.y000 
	imul r263.x___, r263.xxxx, r264.xxxx
	mov r264, l10
	ishl r265.x___, r263.xxxx, r264.xxxx
	mov r261, r261.x000 
	iadd r265.x___, r261.xxxx, r265.xxxx
	mov r1010.x___, r265.xxxx
	uav_arena_load_id(8)_size(dword) r1011.x, r1010.x
	mov r266, r1011
	inegate r267.x___, r266.xxxx
	iadd r262.x___, r262.xxxx, r267.xxxx
	ult r262.x___, r262.xxxx, r264.xxxx
	if_logicalnz r262.xxxx
	else
	iadd r262.x___, r263.xxxx, r266.xxxx
	mov r263, l10
	ishl r262.x___, r262.xxxx, r263.xxxx
	iadd r261.x___, r261.xxxx, r262.xxxx
	mov r262, l9
	mov r1011, r262
	mov r1010.x___, r261.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	mov r261, l11
	iadd r261.x___, r266.xxxx, r261.xxxx
	mov r1011, r261
	mov r1010.x___, r265.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	endif
	endif
	mov r261, l9
	mov r262.xy__, cb0[8].yz
	mov r262, r262.y000 
	ine r261.x___, r262.xxxx, r261.xxxx
	if_logicalnz r261.xxxx
	mov r261, l9
	mov r261.xy__, cb0[8].yz
	mov r263, cb0[1].xyz0
	mov r264, r263.y000 
	mov r265, r1022.xyz0
	mov r266, r265.z000 
	imul r264.x___, r266.xxxx, r264.xxxx
	mov r266, r265.y000 
	iadd r264.x___, r264.xxxx, r266.xxxx
	mov r263, r263.x000 
	imul r263.x___, r264.xxxx, r263.xxxx
	mov r264, r265.x000 
	iadd r263.x___, r263.xxxx, r264.xxxx
	mov r264, r261.y000 
	imul r263.x___, r263.xxxx, r264.xxxx
	mov r264, l10
	ishl r265.x___, r263.xxxx, r264.xxxx
	mov r261, r261.x000 
	iadd r265.x___, r261.xxxx, r265.xxxx
	mov r1010.x___, r265.xxxx
	uav_arena_load_id(8)_size(dword) r1011.x, r1010.x
	mov r266, r1011
	inegate r267.x___, r266.xxxx
	iadd r262.x___, r262.xxxx, r267.xxxx
	ult r262.x___, r262.xxxx, r264.xxxx
	if_logicalnz r262.xxxx
	else
	iadd r262.x___, r263.xxxx, r266.xxxx
	mov r263, l10
	ishl r262.x___, r262.xxxx, r263.xxxx
	iadd r261.x___, r261.xxxx, r262.xxxx
	mov r1011, r257
	mov r1010.x___, r261.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	mov r257, l11
	iadd r257.x___, r266.xxxx, r257.xxxx
	mov r1011, r257
	mov r1010.x___, r265.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	endif
	else
	endif
	mov r257, l9
	mov r261.xy__, cb0[8].yz
	mov r261, r261.y000 
	ine r257.x___, r261.xxxx, r257.xxxx
	if_logicalnz r257.xxxx
	mov r257, l9
	mov r257.xy__, cb0[8].yz
	mov r262, cb0[1].xyz0
	mov r263, r262.y000 
	mov r264, r1022.xyz0
	mov r265, r264.z000 
	imul r263.x___, r265.xxxx, r263.xxxx
	mov r265, r264.y000 
	iadd r263.x___, r263.xxxx, r265.xxxx
	mov r262, r262.x000 
	imul r262.x___, r263.xxxx, r262.xxxx
	mov r263, r264.x000 
	iadd r262.x___, r262.xxxx, r263.xxxx
	mov r263, r257.y000 
	imul r262.x___, r262.xxxx, r263.xxxx
	mov r263, l10
	ishl r264.x___, r262.xxxx, r263.xxxx
	mov r257, r257.x000 
	iadd r264.x___, r257.xxxx, r264.xxxx
	mov r1010.x___, r264.xxxx
	uav_arena_load_id(8)_size(dword) r1011.x, r1010.x
	mov r265, r1011
	inegate r266.x___, r265.xxxx
	iadd r261.x___, r261.xxxx, r266.xxxx
	ult r261.x___, r261.xxxx, r263.xxxx
	if_logicalnz r261.xxxx
	else
	iadd r261.x___, r262.xxxx, r265.xxxx
	mov r262, l10
	ishl r261.x___, r261.xxxx, r262.xxxx
	iadd r257.x___, r257.xxxx, r261.xxxx
	mov r1011, r258
	mov r1010.x___, r257.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	mov r257, l11
	iadd r257.x___, r265.xxxx, r257.xxxx
	mov r1011, r257
	mov r1010.x___, r264.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	endif
	else
	endif
	mov r257, l9
	mov r258.xy__, cb0[8].yz
	mov r258, r258.y000 
	ine r257.x___, r258.xxxx, r257.xxxx
	if_logicalnz r257.xxxx
	mov r257, l9
	mov r257.xy__, cb0[8].yz
	mov r261, cb0[1].xyz0
	mov r262, r261.y000 
	mov r263, r1022.xyz0
	mov r264, r263.z000 
	imul r262.x___, r264.xxxx, r262.xxxx
	mov r264, r263.y000 
	iadd r262.x___, r262.xxxx, r264.xxxx
	mov r261, r261.x000 
	imul r261.x___, r262.xxxx, r261.xxxx
	mov r262, r263.x000 
	iadd r261.x___, r261.xxxx, r262.xxxx
	mov r262, r257.y000 
	imul r261.x___, r261.xxxx, r262.xxxx
	mov r262, l10
	ishl r263.x___, r261.xxxx, r262.xxxx
	mov r257, r257.x000 
	iadd r263.x___, r257.xxxx, r263.xxxx
	mov r1010.x___, r263.xxxx
	uav_arena_load_id(8)_size(dword) r1011.x, r1010.x
	mov r264, r1011
	inegate r265.x___, r264.xxxx
	iadd r258.x___, r258.xxxx, r265.xxxx
	ult r258.x___, r258.xxxx, r262.xxxx
	if_logicalnz r258.xxxx
	else
	iadd r258.x___, r261.xxxx, r264.xxxx
	mov r261, l10
	ishl r258.x___, r258.xxxx, r261.xxxx
	iadd r257.x___, r257.xxxx, r258.xxxx
	mov r1011, r259
	mov r1010.x___, r257.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	mov r257, l11
	iadd r257.x___, r264.xxxx, r257.xxxx
	mov r1011, r257
	mov r1010.x___, r263.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	endif
	else
	endif
	mov r257, l9
	mov r258.xy__, cb0[8].yz
	mov r258, r258.y000 
	ine r257.x___, r258.xxxx, r257.xxxx
	if_logicalnz r257.xxxx
	mov r257, l9
	mov r257.xy__, cb0[8].yz
	mov r259, cb0[1].xyz0
	mov r261, r259.y000 
	mov r262, r1022.xyz0
	mov r263, r262.z000 
	imul r261.x___, r263.xxxx, r261.xxxx
	mov r263, r262.y000 
	iadd r261.x___, r261.xxxx, r263.xxxx
	mov r259, r259.x000 
	imul r259.x___, r261.xxxx, r259.xxxx
	mov r261, r262.x000 
	iadd r259.x___, r259.xxxx, r261.xxxx
	mov r261, r257.y000 
	imul r259.x___, r259.xxxx, r261.xxxx
	mov r261, l10
	ishl r262.x___, r259.xxxx, r261.xxxx
	mov r257, r257.x000 
	iadd r262.x___, r257.xxxx, r262.xxxx
	mov r1010.x___, r262.xxxx
	uav_arena_load_id(8)_size(dword) r1011.x, r1010.x
	mov r263, r1011
	inegate r264.x___, r263.xxxx
	iadd r258.x___, r258.xxxx, r264.xxxx
	ult r258.x___, r258.xxxx, r261.xxxx
	if_logicalnz r258.xxxx
	else
	iadd r258.x___, r259.xxxx, r263.xxxx
	mov r259, l10
	ishl r258.x___, r258.xxxx, r259.xxxx
	iadd r257.x___, r257.xxxx, r258.xxxx
	mov r1011, r260
	mov r1010.x___, r257.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	mov r257, l11
	iadd r257.x___, r263.xxxx, r257.xxxx
	mov r1011, r257
	mov r1010.x___, r262.x
	uav_arena_store_id(8)_size(dword) r1010.x, r1011.x
	endif
	else
	endif
	else
	endif
	endif
	ret_dyn
endfunc ; hello
;ARGSTART:hello
;uniqueid:1138
;memory:hwlocal:0
;memory:datareqd
;printf_fmt:0:4:4:4:4:4:103:Hello, I'm an OpenCl GPU multi-core device. my position right now is x=%d, y=%d in the group x=%d y=%d\n;
;ARGEND:hello










end

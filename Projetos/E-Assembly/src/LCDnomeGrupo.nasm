; Arquivo: LCDnomeGrupo.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2018
;
; Escreva no LCD o nome do grupo

;traço vertical
leaw $17530, %A
movw $-1, (%A)
leaw $17550, %A
movw $-1, (%A)
leaw $17570, %A
movw $-1, (%A)
leaw $17590, %A
movw $-1, (%A)
leaw $17610, %A
movw $-1, (%A)
leaw $17630, %A
movw $-1, (%A)
leaw $17650, %A
movw $-1, (%A)
leaw $17670, %A
movw $-1, (%A)
leaw $17690, %A
movw $-1, (%A)
leaw $17710, %A
movw $-1, (%A)
leaw $17730, %A
movw $-1, (%A)
leaw $17750, %A
movw $-1, (%A)
leaw $17770, %A
movw $-1, (%A)
leaw $17790, %A
movw $-1, (%A)
leaw $17810, %A
movw $-1, (%A)
leaw $17830, %A
movw $-1, (%A)
leaw $17850, %A
movw $-1, (%A)
leaw $17870, %A
movw $-1, (%A)
leaw $17890, %A
movw $-1, (%A)
leaw $17910, %A
movw $-1, (%A)
leaw $17930, %A
movw $-1, (%A)
leaw $17950, %A
movw $-1, (%A)
leaw $17970, %A
movw $-1, (%A)
leaw $17990, %A
movw $-1, (%A)
leaw $18010, %A
movw $-1, (%A)
leaw $18030, %A
movw $-1, (%A)
leaw $18050, %A
movw $-1, (%A)
leaw $18070, %A
movw $-1, (%A)
leaw $18090, %A
movw $-1, (%A)
leaw $18110, %A
movw $-1, (%A)
leaw $18130, %A
movw $-1, (%A)
leaw $18150, %A
movw $-1, (%A)
leaw $18170, %A
movw $-1, (%A)
leaw $18190, %A
movw $-1, (%A)
leaw $18210, %A
movw $-1, (%A)
leaw $18230, %A
movw $-1, (%A)
leaw $18250, %A
movw $-1, (%A)
leaw $18270, %A
movw $-1, (%A)
leaw $18290, %A
movw $-1, (%A)
leaw $18310, %A
movw $-1, (%A)
leaw $18330, %A
movw $-1, (%A)

;traço horizontal de cima
leaw $17531, %A
movw $-1, (%A)
leaw $17551, %A
movw $-1, (%A)
leaw $17532, %A
movw $-1, (%A)
leaw $17552, %A
movw $-1, (%A)
leaw $17571, %A
movw $-1, (%A)
leaw $17572, %A
movw $-1, (%A)
leaw $17591, %A
movw $-1, (%A)
leaw $17592, %A
movw $-1, (%A)

;traço horizontal de baixo
leaw $18331, %A
movw $-1, (%A)
leaw $18332, %A
movw $-1, (%A)
leaw $18311, %A
movw $-1, (%A)
leaw $18312, %A
movw $-1, (%A)
leaw $18291, %A
movw $-1, (%A)
leaw $18292, %A
movw $-1, (%A)
leaw $18271, %A
movw $-1, (%A)
leaw $18272, %A
movw $-1, (%A)

;quadrado de cima
leaw $65280, %A
movw %A, %D
leaw $17613, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $17633, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $17653, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $17673, %A
movw %D, (%A)

;quadrado de baixo
leaw $65280, %A
movw %A, %D
leaw $18253, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $18233, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $18213, %A
movw %D, (%A)
leaw $65280, %A
movw %A, %D
leaw $18193, %A
movw %D, (%A)

;quadrado de baixo
leaw $255, %A
movw %A, %D
leaw $17693, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17713, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17733, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17753, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17773, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17793, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17813, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17833, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17853, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17873, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17893, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17913, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17933, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17953, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17973, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $17993, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18013, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18033, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18053, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18073, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18093, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18113, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18133, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18153, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18173, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D
leaw $18193, %A
movw %D, (%A)
leaw $255, %A
movw %A, %D

leaw $17735, %A
movw $-1, (%A)
leaw $17755, %A
movw $-1, (%A)
leaw $17775, %A
movw $-1, (%A)
leaw $17795, %A
movw $-1, (%A)
leaw $17815, %A
movw $-1, (%A)
leaw $17835, %A
movw $-1, (%A)
leaw $17855, %A
movw $-1, (%A)
leaw $17875, %A
movw $-1, (%A)
leaw $17895, %A
movw $-1, (%A)
leaw $17915, %A
movw $-1, (%A)
leaw $17935, %A
movw $-1, (%A)
leaw $17955, %A
movw $-1, (%A)
leaw $17975, %A
movw $-1, (%A)
leaw $17995, %A
movw $-1, (%A)
leaw $18015, %A
movw $-1, (%A)
leaw $18035, %A
movw $-1, (%A)
leaw $18055, %A
movw $-1, (%A)
leaw $18075, %A
movw $-1, (%A)
leaw $18095, %A
movw $-1, (%A)
leaw $18115, %A
movw $-1, (%A)
leaw $18135, %A
movw $-1, (%A)
leaw $18155, %A
movw $-1, (%A)
leaw $18175, %A
movw $-1, (%A)
leaw $18195, %A
movw $-1, (%A)
leaw $18215, %A
movw $-1, (%A)
leaw $18235, %A
movw $-1, (%A)
leaw $18255, %A
movw $-1, (%A)
leaw $18275, %A
movw $-1, (%A)
leaw $18295, %A
movw $-1, (%A)
leaw $18315, %A
movw $-1, (%A)

leaw $17737, %A
movw $-1, (%A)
leaw $17757, %A
movw $-1, (%A)
leaw $17777, %A
movw $-1, (%A)
leaw $17797, %A
movw $-1, (%A)
leaw $17817, %A
movw $-1, (%A)
leaw $17837, %A
movw $-1, (%A)
leaw $17857, %A
movw $-1, (%A)
leaw $17877, %A
movw $-1, (%A)
leaw $17897, %A
movw $-1, (%A)
leaw $17917, %A
movw $-1, (%A)
leaw $17937, %A
movw $-1, (%A)
leaw $17957, %A
movw $-1, (%A)
leaw $17977, %A
movw $-1, (%A)
leaw $17997, %A
movw $-1, (%A)
leaw $18017, %A
movw $-1, (%A)
leaw $18037, %A
movw $-1, (%A)
leaw $18057, %A
movw $-1, (%A)
leaw $18077, %A
movw $-1, (%A)
leaw $18097, %A
movw $-1, (%A)
leaw $18117, %A
movw $-1, (%A)
leaw $18137, %A
movw $-1, (%A)
leaw $18157, %A
movw $-1, (%A)
leaw $18177, %A
movw $-1, (%A)
leaw $18197, %A
movw $-1, (%A)
leaw $18217, %A
movw $-1, (%A)
leaw $18237, %A
movw $-1, (%A)
leaw $18257, %A
movw $-1, (%A)
leaw $18277, %A
movw $-1, (%A)
leaw $18297, %A
movw $-1, (%A)
leaw $18317, %A
movw $-1, (%A)

leaw $17737, %A
movw $-1, (%A)
leaw $17738, %A
movw $-1, (%A)
leaw $17757, %A
movw $-1, (%A)
leaw $17758, %A
movw $-1, (%A)
leaw $17777, %A
movw $-1, (%A)
leaw $17778, %A
movw $-1, (%A)
leaw $17797, %A
movw $-1, (%A)
leaw $17798, %A
movw $-1, (%A)


leaw $17739, %A
movw $-1, (%A)
leaw $17759, %A
movw $-1, (%A)
leaw $17779, %A
movw $-1, (%A)
leaw $17799, %A
movw $-1, (%A)
leaw $17819, %A
movw $-1, (%A)
leaw $17839, %A
movw $-1, (%A)
leaw $17859, %A
movw $-1, (%A)
leaw $17879, %A
movw $-1, (%A)
leaw $17899, %A
movw $-1, (%A)
leaw $17919, %A
movw $-1, (%A)
leaw $17939, %A
movw $-1, (%A)
leaw $17959, %A
movw $-1, (%A)
leaw $17979, %A
movw $-1, (%A)
leaw $17999, %A
movw $-1, (%A)
leaw $18019, %A
movw $-1, (%A)
leaw $18039, %A
movw $-1, (%A)
leaw $18059, %A
movw $-1, (%A)
leaw $18079, %A
movw $-1, (%A)
leaw $18099, %A
movw $-1, (%A)
leaw $18119, %A
movw $-1, (%A)
leaw $18139, %A
movw $-1, (%A)
leaw $18159, %A
movw $-1, (%A)
leaw $18179, %A
movw $-1, (%A)
leaw $18199, %A
movw $-1, (%A)
leaw $18219, %A
movw $-1, (%A)
leaw $18239, %A
movw $-1, (%A)
leaw $18259, %A
movw $-1, (%A)
leaw $18279, %A
movw $-1, (%A)
leaw $18299, %A
movw $-1, (%A)
leaw $18319, %A
movw $-1, (%A)

leaw $17740, %A
movw %D, (%A)
leaw $17760, %A
movw %D, (%A)
leaw $17780, %A
movw %D, (%A)
leaw $17800, %A
movw %D, (%A)
leaw $17820, %A
movw %D, (%A)
leaw $17840, %A
movw %D, (%A)
leaw $17860, %A
movw %D, (%A)
leaw $17880, %A
movw %D, (%A)
leaw $17900, %A
movw %D, (%A)
leaw $17920, %A
movw %D, (%A)
leaw $17940, %A
movw %D, (%A)
leaw $17960, %A
movw %D, (%A)
leaw $17980, %A
movw %D, (%A)
leaw $18000, %A
movw %D, (%A)
leaw $18020, %A
movw %D, (%A)
leaw $18040, %A
movw %D, (%A)
leaw $18060, %A
movw %D, (%A)
leaw $18080, %A
movw %D, (%A)
leaw $18100, %A
movw %D, (%A)
leaw $18120, %A
movw %D, (%A)
leaw $18140, %A
movw %D, (%A)
leaw $18160, %A
movw %D, (%A)
leaw $18180, %A
movw %D, (%A)
leaw $18200, %A
movw %D, (%A)
leaw $18220, %A
movw %D, (%A)
leaw $18240, %A
movw %D, (%A)
leaw $18260, %A
movw %D, (%A)
leaw $18280, %A
movw %D, (%A)
leaw $18300, %A
movw %D, (%A)
leaw $18320, %A
movw %D, (%A)

leaw $17742, %A
movw %D, (%A)
leaw $17762, %A
movw %D, (%A)
leaw $17782, %A
movw %D, (%A)
leaw $17802, %A
movw %D, (%A)
leaw $17822, %A
movw %D, (%A)
leaw $17842, %A
movw %D, (%A)
leaw $17862, %A
movw %D, (%A)
leaw $17882, %A
movw %D, (%A)
leaw $17902, %A
movw %D, (%A)
leaw $17922, %A
movw %D, (%A)
leaw $17942, %A
movw %D, (%A)
leaw $17962, %A
movw %D, (%A)
leaw $17982, %A
movw %D, (%A)
leaw $18002, %A
movw %D, (%A)
leaw $18022, %A
movw %D, (%A)
leaw $18042, %A
movw %D, (%A)
leaw $18062, %A
movw %D, (%A)
leaw $18082, %A
movw %D, (%A)
leaw $18102, %A
movw %D, (%A)
leaw $18122, %A
movw %D, (%A)
leaw $18142, %A
movw %D, (%A)
leaw $18162, %A
movw %D, (%A)
leaw $18182, %A
movw %D, (%A)
leaw $18202, %A
movw %D, (%A)
leaw $18222, %A
movw %D, (%A)
leaw $18242, %A
movw %D, (%A)
leaw $18262, %A
movw %D, (%A)
leaw $18282, %A
movw %D, (%A)
leaw $18302, %A
movw %D, (%A)
leaw $18322, %A
movw %D, (%A)

leaw $17741, %A
movw $-1, (%A)
leaw $17742, %A
movw $-1, (%A)
leaw $17761, %A
movw $-1, (%A)
leaw $17762, %A
movw $-1, (%A)
leaw $17781, %A
movw $-1, (%A)
leaw $17782, %A
movw $-1, (%A)
leaw $17801, %A
movw $-1, (%A)
leaw $17802, %A
movw $-1, (%A)

leaw $18261, %A
movw $-1, (%A)
leaw $18262, %A
movw $-1, (%A)
leaw $18281, %A
movw $-1, (%A)
leaw $18282, %A
movw $-1, (%A)
leaw $18301, %A
movw $-1, (%A)
leaw $18302, %A
movw $-1, (%A)
leaw $18321, %A
movw $-1, (%A)
leaw $18322, %A
movw $-1, (%A)
; RUN: llvm-mc -assemble --print-imm-hex --show-encoding -triple mos --mcpu=mos65el02 < %s | FileCheck %s

 	ora	$ea,sp                  ; CHECK: encoding: [0x03,0xea]
 	ora	($ea,sp),y              ; CHECK: encoding: [0x13,0xea]
 	and	$ea,sp                  ; CHECK: encoding: [0x23,0xea]
 	and	($ea,sp),y              ; CHECK: encoding: [0x33,0xea]
 	eor	$ea,sp                  ; CHECK: encoding: [0x43,0xea]
 	eor	($ea,sp),y              ; CHECK: encoding: [0x53,0xea]
 	adc	$ea,sp                  ; CHECK: encoding: [0x63,0xea]
 	adc	($ea,sp),y              ; CHECK: encoding: [0x73,0xea]
 	sta	$ea,sp                  ; CHECK: encoding: [0x83,0xea]
 	sta	($ea,sp),y              ; CHECK: encoding: [0x93,0xea]
 	lda	$ea,sp                  ; CHECK: encoding: [0xa3,0xea]
 	lda	($ea,sp),y              ; CHECK: encoding: [0xb3,0xea]
 	cmp	$ea,sp                  ; CHECK: encoding: [0xc3,0xea]
 	cmp	($ea,sp),y              ; CHECK: encoding: [0xd3,0xea]
 	sbc	$ea,sp                  ; CHECK: encoding: [0xe3,0xea]
 	sbc	($ea,sp),y              ; CHECK: encoding: [0xf3,0xea]

 	sep	#$ea                    ; CHECK: encoding: [0xe2,0xea]
 	rep	#$ea                    ; CHECK: encoding: [0xc2,0xea]

 	jsr	($eaea,x)               ; CHECK: encoding: [0xfc,0xea,0xea]

	pea	$eaea                   ; CHECK: encoding: [0xf4,0xea,0xea]
	pei	($ea)                   ; CHECK: encoding: [0xd4,0xea]
	per	$ea                     ; CHECK: encoding: [0x62,0xea]

	txy                             ; CHECK: encoding: [0x9b]
	tyx                             ; CHECK: encoding: [0xbb]

	xba                             ; CHECK: encoding: [0xeb]
	xce                             ; CHECK: encoding: [0xfb]

	nxt                             ; CHECK: encoding: [0x02]
	ent                             ; CHECK: encoding: [0x22]
	nxa                             ; CHECK: encoding: [0x42]

	rea	$eaea                   ; CHECK: encoding: [0x44,0xea,0xea]
	rei	($ea)                   ; CHECK: encoding: [0x54,0xea]
	rer	$ea                     ; CHECK: encoding: [0x82,0xea]

 	ora	$ea,rp                  ; CHECK: encoding: [0x07,0xea]
 	ora	($ea,rp),y              ; CHECK: encoding: [0x17,0xea]
 	and	$ea,rp                  ; CHECK: encoding: [0x27,0xea]
 	and	($ea,rp),y              ; CHECK: encoding: [0x37,0xea]
 	eor	$ea,rp                  ; CHECK: encoding: [0x47,0xea]
 	eor	($ea,rp),y              ; CHECK: encoding: [0x57,0xea]
 	adc	$ea,rp                  ; CHECK: encoding: [0x67,0xea]
 	adc	($ea,rp),y              ; CHECK: encoding: [0x77,0xea]
 	sta	$ea,rp                  ; CHECK: encoding: [0x87,0xea]
 	sta	($ea,rp),y              ; CHECK: encoding: [0x97,0xea]
 	lda	$ea,rp                  ; CHECK: encoding: [0xa7,0xea]
 	lda	($ea,rp),y              ; CHECK: encoding: [0xb7,0xea]
 	cmp	$ea,rp                  ; CHECK: encoding: [0xc7,0xea]
 	cmp	($ea,rp),y              ; CHECK: encoding: [0xd7,0xea]
 	sbc	$ea,rp                  ; CHECK: encoding: [0xe7,0xea]
 	sbc	($ea,rp),y              ; CHECK: encoding: [0xf7,0xea]

	rhi                             ; CHECK: encoding: [0x0b]
	rhx                             ; CHECK: encoding: [0x1b]
	rli                             ; CHECK: encoding: [0x2b]
	rlx                             ; CHECK: encoding: [0x3b]
	rha                             ; CHECK: encoding: [0x4b]
	rhy                             ; CHECK: encoding: [0x5b]
	rla                             ; CHECK: encoding: [0x6b]
	rly                             ; CHECK: encoding: [0x7b]
	txr                             ; CHECK: encoding: [0x8b]
	trx                             ; CHECK: encoding: [0xab]
	txi                             ; CHECK: encoding: [0x5c]
	tix                             ; CHECK: encoding: [0xdc]

	mul	$ea                     ; CHECK: encoding: [0x0f,0xea]
	mul	$ea,x                   ; CHECK: encoding: [0x1f,0xea]
	mul	$eaea                   ; CHECK: encoding: [0x2f,0xea,0xea]
	mul	$eaea,x                 ; CHECK: encoding: [0x3f,0xea,0xea]
	div	$ea                     ; CHECK: encoding: [0x4f,0xea]
	div	$ea,x                   ; CHECK: encoding: [0x5f,0xea]
	div	$eaea                   ; CHECK: encoding: [0x6f,0xea,0xea]
	div	$eaea,x                 ; CHECK: encoding: [0x7f,0xea,0xea]

	zea                             ; CHECK: encoding: [0x8f]
	sea                             ; CHECK: encoding: [0x9f]
	tda                             ; CHECK: encoding: [0xaf]
	tad                             ; CHECK: encoding: [0xbf]
	pld                             ; CHECK: encoding: [0xcf]
	phd                             ; CHECK: encoding: [0xdf]
	mmu	#$ea                    ; CHECK: encoding: [0xef,0xea]

 	ora	#$eaea                  ; CHECK: encoding: [0x09,0xea,0xea]
 	and	#$eaea                  ; CHECK: encoding: [0x29,0xea,0xea]
 	eor	#$eaea                  ; CHECK: encoding: [0x49,0xea,0xea]
 	adc	#$eaea                  ; CHECK: encoding: [0x69,0xea,0xea]
 	lda	#$eaea                  ; CHECK: encoding: [0xa9,0xea,0xea]
 	cmp	#$eaea                  ; CHECK: encoding: [0xc9,0xea,0xea]
 	sbc	#$eaea                  ; CHECK: encoding: [0xe9,0xea,0xea]
 	ldx	#$eaea                  ; CHECK: encoding: [0xa2,0xea,0xea]
 	ldy	#$eaea                  ; CHECK: encoding: [0xa0,0xea,0xea]
 	cpy	#$eaea                  ; CHECK: encoding: [0xc0,0xea,0xea]
 	cpx	#$eaea                  ; CHECK: encoding: [0xe0,0xea,0xea]

$40010800 constant GPIOA_CRL_REG $4001080c constant GPIOA_ODR_REG $40001018 constant RCC_APB2EN_REG	0 variable tim : gpioinit $00000100 RCC_APB2EN_REG bis! $11111111 GPIOA_CRL_REG ! ; 
: delay 250000 0 do i drop loop ; : increment tim @ 1 + $ff and tim ! ; : display tim @ GPIOA_ODR_REG ! ; : blonky begin increment display delay key? if exit then again ; gpioinit blonky

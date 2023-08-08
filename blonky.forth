$40010800 constant GPIOA_CRL_REG 	\ GPIOA control register
$4001080c constant GPIOA_ODR_REG 	\ GPIOA output data register
$40001018 constant RCC_APB2EN_REG	\ GPIOx enable register

0 variable tim 						\ A variable to be used as a timer 

									\ write 0xf4 (b00000100) to the GPIOx enable register. This activates GPIOA
: gpioinit $f4 RCC_APB2EN_REG bis! $ff GPIOA_CRL_REG ! ;

: delay 250000 0 do i drop loop ; 	\ Push 250000 to the stack and decrement each cycle

: increment tim @ 1 + $ff and tim ! ; \ Increment the tim variable by one each cycle. Roll over at 2^8

: display tim @ GPIOA_ODR_REG ! ;	\ Write the value of tim to the output data register

: blonky begin increment display delay key? if exit then again ; \ Loop untill any key pressed. Connecting a LED to any GPIOA pin should result in a blinky

gpioinit blonky
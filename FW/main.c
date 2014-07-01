/*
 * File: main.c
 * Date: 02.01.2013
 * Denis Zheleznyakov aka ZiB @ http://ziblog.ru
 */

#include "main.h"

@inline static void gpio_init(void)
{
	// перевод всех линий на вход с подтяжкой к плюсу
	//Set PA3 out for debug
	GPIOA->CR1 = 0x08;
	GPIOA->CR2 = 0x08;
	GPIOA->DDR = 0x08;
	GPIOA->ODR = 0x00;
	
	//GPIOB->CR1 = 0xFF;
	//GPIOC->CR1 = 0xFF;
	//GPIOD->CR1 = 0xFF;
	//GPIOE->CR1 = 0xFF;
	//GPIOF->CR1 = 0xFF;

	// Входные линии USB
	//GPIOC->CR1 = 0;
	//GPIOC->CR2 = 0;
	//GPIOC->DDR = 0x3F;
	//GPIOC->ODR = 0;
}

@inline static void clock_init(void)
{
	// после сброса микроконтроллер работает от встроенного HSI-генератора
	// с делителем по умолчанию 8, меняем его на 1
	//CLK->CKDIVR = 0;

	// переключаемся на внешний кварцевый резонатор
	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSE, DISABLE, CLK_CURRENTCLOCKSTATE_DISABLE);
}

@inline static void timers_init(void)
{
	CLK->PCKENR1 |= CLK_PCKENR1_TIM1;

	// 定时器1 - “捕获”的第一个脉冲的USB包裹
	TIM1_TimeBaseInit(0, TIM1_PSCRELOADMODE_UPDATE, 1000, 0);
	// 信号采集，通过USB D-
	TIM1_ICInit(TIM1_CHANNEL_2, TIM1_ICPOLARITY_RISING, TIM1_ICSELECTION_DIRECTTI, TIM1_ICPSC_DIV1, 0x02);
	TIM1_SelectInputTrigger(TIM1_TS_TI2FP2);
	TIM1_SelectSlaveMode(TIM1_SLAVEMODE_TRIGGER);
	TIM1_ClearFlag(TIM1_FLAG_CC2);
	TIM1_ITConfig(TIM1_IT_CC2, ENABLE);
}

extern uint8_t usb_ready;
uint8_t data_buffer[4];

void delay(uint8_t n)
{
	unsigned int i;
	while(n>0)
	{
		for(i=0;i<2000;i++)
			;
		n--;
	}
}

void main(void)
{
	char x=10;
	char y=10;
	
	CLK->CKDIVR = 0;	//16M
	
	disableInterrupts();

	gpio_init();

	timers_init();

	usb_init();
	
	clock_init();	//12M
	
	enableInterrupts();

	while(usb_ready == 0)
	{
		usb_process();
	}
	while(1)
	{
		delay(100);
		
		if(get_random_byte()>127)
		{
			x=-x;
			y=-y;
		}
		
			data_buffer[0] = 0x00;
			data_buffer[1] = x;
			data_buffer[2] = y;
			data_buffer[3] = 0x00;
			usb_send_data(&data_buffer[0], 4, 0);
	}
}

#include <at89x51.h>
void UART_Init(int baudrate){
	SCON = 0x50;
	TMOD = 0x20;
	TH1 = 256 - (11059200)/(long)(32*12*baudrate);
	TR1 = 1;
}

void UART_TxChar(char ch){
	SBUF = ch;
	while(TI==0);
	TI=0;
}

char UART_RxChar(){
	while(RI==0);
	RI=0;
	return(SBUF);
}



int main(){
	char i,a[]={"Welcome to 8051 Serial Comm, Type the char to be echoed: "};
	char ch;
	UART_Init(9600);
	for(i=0; a[i] != 0; i++){
		UART_TxChar(a[i]);
	}
	
	while(1)
    {
        ch = UART_RxChar();
        UART_TxChar(ch);
    }
}
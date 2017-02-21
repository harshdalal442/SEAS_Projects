#define LCD_RS	PORTA.B2
#define LCD_EN	PORTD.B6
#define LCD_D4	PORTC.B4
#define LCD_D5	PORTC.B5
#define LCD_D6	PORTC.B6
#define LCD_D7	PORTC.B7

unsigned char people_count=0;
unsigned char prof_memory_address=0;
unsigned char student_memory_address=1;

char* professor_1="19004B22A8D8";char* professor_2="19004AB430D7";char* professor_3="34001226A3A3";

char* lecture_1 = "ESD";char* lecture_2 = "ADC";char* lecture_3 = "PRP";

char* student_1 = "1C007926FFBC";char* student_2 = "1C0079AC478E";char* student_3 = "1D003D853E9B";
char* student_4 = "1D003D78237B";char* student_5 = "1D003D7B4A11";char* student_6 = "1D003AD0F90E";
char* student_7 = "1D003D4FFB94";char* student_8 = "1D003D050E2B";

char* name_of_student_1="1401016";char* name_of_student_2="1401022";char* name_of_student_3="1401026";
char* name_of_student_4="1401029";char* name_of_student_5="1401056";char* name_of_student_6="1401057";
char* name_of_student_7="1401058";char* name_of_student_8="1401061";		//schemer-special

char student_is_present[]  = {0,0,0,0,0,0,0,0,0};	// 9 values USE BASE 1
char professor_is_present[]= {0,0,0,0};				// 4 values USE BASE 1

void LCD_data(unsigned char Data)
{PORTC=Data&0xF0;LCD_RS=1;LCD_EN=1;delay_us(5);LCD_EN=0;PORTC=((Data<<4)&0xF0);LCD_EN=1;delay_us(5);LCD_EN=0;delay_us(5);}

void LCD_Print(char * str)
{unsigned char i=0;while(*(str+i)!=0){LCD_data(*(str+i));i++;delay_ms(5);}}

void lcdcommand(unsigned char command)
{PORTC=command&0xF0;LCD_RS=0;LCD_EN=1;delay_us(5);LCD_EN=0;delay_us(5);PORTC=((command<<4)&0xF0);LCD_EN=1;delay_us(5);LCD_EN=0;delay_us(5);}

void Cursor_Position(unsigned short int x,unsigned short int y)
{unsigned char firstcharadd[] = {0x80,0xC0};lcdcommand((firstcharadd[x-1]+y-1));}

void clear()
{lcdcommand(0x01);delay_ms(2);}

void LCD_Initialize()
{LCD_EN=0;lcdCommand(0x33);lcdCommand(0x32);lcdCommand(0x28);lcdCommand(0x0E);clear();lcdCommand(0x06);lcdCommand(0x80);}

void usart_init()
{UBRRH = 0;UBRRL = 51;UCSRB|= (1<<RXEN)|(1<<TXEN);UCSRC |= (1 << URSEL)|(3<<UCSZ0);}

void EEPROM_write_data(unsigned char address, unsigned char datanew)
{while(EECR & (1<<EEWE));EEARH = 0;EEARL = address;EEDR = datanew;EECR |= 1<<eemwe;EECR |= 1<<eewe;}

char return_professor_id(char* rfid_received_data)
{
    char i;
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != professor_1[i]) break;
     else if(i==11 && *(rfid_received_data+11) == professor_1[i]) return 1;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != professor_2[i]) break;
     else if(i==11 && *(rfid_received_data+11) == professor_2[i]) return 2;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != professor_3[i]) break;
     else if(i==11 && *(rfid_received_data+11) == professor_3[i]) return 3;
    }
    return 0;
}

char check_if_no_other_lecture(char professor_id)
{
    if(
		(professor_id == 1 && (professor_is_present[2] == 1 || professor_is_present[3] == 1)) ||
        (professor_id == 2 && (professor_is_present[1] == 1 || professor_is_present[3] == 1)) ||
        (professor_id == 3 && (professor_is_present[1] == 1 || professor_is_present[2] == 1))
	  )
    {
        clear();
        Cursor_Position(1,1);
        LCD_Print("Class Is On.");
		Cursor_Position(2,1);
        LCD_Print("Please Wait.");
        delay_ms(5000);
        return 0;
    }
    return 1;
}

char return_student_id(char* rfid_received_data)
{
    char i;
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_1[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_1[i]) return 1;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_2[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_2[i]) return 2;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_3[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_3[i]) return 3;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_4[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_4[i]) return 4;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_5[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_5[i]) return 5;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_6[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_6[i]) return 6;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_7[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_7[i]) return 7;
    }
    for(i=0; i<12; i++)
    {if(*(rfid_received_data+i) != student_8[i]) break;
        else if(i==11 && *(rfid_received_data+11) == student_8[i]) return 8;
    }
    return -1;
}

void professor_has_entered(char professor_id)
{
    professor_is_present[professor_id]=1;
    //people_count++;
    clear();
    Cursor_Position(1,1);
    LCD_Print("Hello Professor");
    Cursor_Position(2,1);
		 if(professor_id == 1) LCD_Print(lecture_1);
    else if(professor_id == 2) LCD_Print(lecture_2);
    else if(professor_id == 3) LCD_Print(lecture_3);
    LCD_Print(" Has Started");
    delay_ms(1000);
}

void professor_has_left(char professor_id)
{
    professor_is_present[professor_id]=0;
    //people_count--;
    clear();
    Cursor_Position(1,1);
    LCD_Print("Bye Professor");
    Cursor_Position(2,1);
		 if(professor_id == 1) LCD_Print(lecture_1);
    else if(professor_id == 2) LCD_Print(lecture_2);
    else if(professor_id == 3) LCD_Print(lecture_3);
    LCD_Print(" Has Finished");
    delay_ms(1000);
	EEPROM_write_data(prof_memory_address,professor_id);

	EEPROM_write_data(student_memory_address++,student_is_present[1]);
	EEPROM_write_data(student_memory_address++,student_is_present[2]);
	EEPROM_write_data(student_memory_address++,student_is_present[3]);
	EEPROM_write_data(student_memory_address++,student_is_present[4]);
	EEPROM_write_data(student_memory_address++,student_is_present[5]);
	EEPROM_write_data(student_memory_address++,student_is_present[6]);
	EEPROM_write_data(student_memory_address++,student_is_present[7]);
	EEPROM_write_data(student_memory_address++,student_is_present[8]);

	prof_memory_address = prof_memory_address + student_memory_address;
	student_memory_address=student_memory_address+1;
}

void student_has_entered(char student_id)
{
    student_is_present[student_id] = 1;
    people_count++;
    clear();
    Cursor_Position(1,1);
    if(student_id == 1) LCD_Print(name_of_student_1);
    else if(student_id == 2) LCD_Print(name_of_student_2);
    else if(student_id == 3) LCD_Print(name_of_student_3);
    else if(student_id == 4) LCD_Print(name_of_student_4);
    else if(student_id == 5) LCD_Print(name_of_student_5);
    else if(student_id == 6) LCD_Print(name_of_student_6);
    else if(student_id == 7) LCD_Print(name_of_student_7);
    else if(student_id == 8) LCD_Print(name_of_student_8);

    Cursor_Position(2,1);
    LCD_Print("has entered");
    delay_ms(1000);
}

void student_has_left(char student_id)
{
    student_is_present[student_id] = 0;
    people_count--;
    clear();
    Cursor_Position(1,1);
    LCD_Print(" ");
    if(student_id == 1) LCD_Print(name_of_student_1);
    else if(student_id == 2) LCD_Print(name_of_student_2);
    else if(student_id == 3) LCD_Print(name_of_student_3);
    else if(student_id == 4) LCD_Print(name_of_student_4);
    else if(student_id == 5) LCD_Print(name_of_student_5);
    else if(student_id == 6) LCD_Print(name_of_student_6);
    else if(student_id == 7) LCD_Print(name_of_student_7);
    else if(student_id == 8) LCD_Print(name_of_student_8);

    Cursor_Position(2,1);
    LCD_Print("has left");
    delay_ms(1000);
}

void no_lecture_going_on()
{
    clear();
    Cursor_Position(1,1);
	LCD_Print("No lecture yet");
    LCD_Print("Go play CSGO!");
    delay_ms(1000);
}

void not_a_student()
{
    clear();
    Cursor_Position(1,1);
    LCD_Print("Unidentified.");
	Cursor_Position(2,1);
    LCD_Print("..card detected!");
    delay_ms(1000);
}

void main()
{
    char rfid_data[13];
    char i;
    char isaprofessor;
    char get_student_number;

    rfid_data[12] = '\0';
    DDRA.B0=0;
    DDRC=0xF0;
    DDRA.B2=1;
    DDRD.B6=1;
	DDRB = 0xFF;
	DDRD.B2 = 1;			// fan 1
//	DDRD.B3 = 1;			// fan 2

    clear();
    LCD_Initialize();
    usart_init();


    while(1)
    {
        Cursor_Position(1,1);
        LCD_Print(" Show RFID Tag");

		for(i=0; i<12; i++)rfid_data[i] = 0;

		// can we just write UDR=0x00;
        //UCSRB|=(1<<UDRIE);
        //UCSRB|=(1<<TXCIE);
        UDR=0x00;
        //UCSRB=~(1<<TXCIE);
		//UCSRB=~(1<<UDRIE);

		UCSRB|=(1 << UDRIE);
        UCSRB|=(1 << RXCIE);
        for(i=0; i<12; i++)
        {
            while(UCSRA.B7 == 0);
            rfid_data[i] = UDR;
        }
        UCSRB=~(1 << RXCIE);		//disable recieve
        UCSRB=~(1 << UDRIE);		//disable read

        isaprofessor = return_professor_id(rfid_data);
		get_student_number = return_student_id(rfid_data);
        if(isaprofessor!=0)
		{
			if(check_if_no_other_lecture(isaprofessor) == 1)
			{
				if(professor_is_present[isaprofessor] == 0) professor_has_entered(isaprofessor);
                else professor_has_left(isaprofessor);
			}
		}
        else
        {
            if(get_student_number == -1) not_a_student();
            else
            {
                if(student_is_present[get_student_number] == 1)
                    student_has_left(get_student_number);
                else
                {
                    if(professor_is_present[1] == 1 || professor_is_present[2] == 1 || professor_is_present[3] == 1)
                        student_has_entered(get_student_number);
                    else
                        no_lecture_going_on();
                }

            }
        }

		switch(people_count)
		{
			case 0: PORTB = 0xAA; PORTD.B2 = 0;  break;
			case 1: PORTB = 0x00; PORTD.B2 = 1; break;
			case 2: PORTB = 0xC0; break;
			case 3: PORTB = 0x00; break;
			case 4: PORTB.B3 = 1; break;
			case 5: PORTB.B4 = 1; break;
			case 6: PORTB.B5 = 1; break;
			case 7: PORTB.B6 = 1; break;
			case 8: PORTB.B7 = 1; break;
			default: PORTB = 0xA0; break;



		}
    //    delay_ms(100);
        clear();
    }
}
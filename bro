#include <iostream>
#include <conio.h>
#include <stdlib.h>
using namespace std;

int main()
{
    char option;
    char sop;
    // To display the choices available
  do{ 
        cout<< " ---------------------------------------" << endl;
        cout << " MAIN MENU: Select Laboratory Activity"<< endl ;
        cout << " [1] On Arithmetic Operators and Keyboard Input" << endl;
        cout << " [2] On Arithmetic Operators"<< endl;
        cout << " [3] On Age and Name" << endl;
        cout << " [4] On Temperature range" << endl;
        cout << " [5] On prime and composite numbers" << endl;
        cout << " [6] On Score range" << endl;
        cout << " [7] Switch" << endl;
        cout << " [x] Exit" << endl;
        cout << " Your Choice: ";
        cin>> option;

        switch(toupper(option)){
                case '1':{
                cout<< "This is a program to accept the radius of a cicle and print the area, and circumference."<< endl;
                int x, y,z,sum,avg, product;

                cout << "Enter First Number:"; 
                cin >> x; 
                cout << "Enter Second Number:"; 
                cin >> y; 
                cout << "Enter Third Number:"; 
                cin >> z; 

                sum=x+y+z;

                avg= (x+y+z)/3;

                product= x*y*z;

                cout<<"The sum of "<< x <<", "<< y <<" ,and "<< z <<" is "<< sum <<"." <<endl;

                cout<<"The average of "<< x <<", "<< y <<" ,and "<< z <<" is "<< avg <<"."<< endl;

                cout<<"The product of "<< x <<", "<< y <<" ,and "<< z <<" is "<< product <<".";
                break;
                }   
                case '2':{
                do{ 
                    cout << " SELECT PROGRAMS " << endl;
                    cout << " [1] Circumference and Area" <<endl;
                    cout << " [2] Temperature Coversion" <<endl;
                    cout << " [B] Go back to the main menu" <<endl;
                    cin>> sop;
                    switch ( toupper( sop)){
                        case '1': {
                            #define PI 3.14
                            float radius, area, circum;  // Declare variables radius, area, circum to store the data
                
                            cout<<" Enter radius: ";  //Ask the user to to enter radius
                            cin>>radius;            // Accept a number and store in radius
            
                            circum = 2*PI*radius;   //Calculate the circumference of the circle
                            area = PI*(radius*radius);      // Calculate the area of the circle
                            cout<<" The area of the circle is: "<< area << endl;  //display the area of the circle
                            cout<<" The circumference of the circle is: "<< circum << endl;   //display the circumference of the circle
                        
                        } break;
                        case '2': {
                            float Cel, Kel, Fah;  // Declare variables Cel, Kel, Fah to store the data

                            cout<<" Enter degrees in Celsius: ";   //Ask the user to to enter degrees in Celsius
                            cin>> Cel;                         // Accept a number and store in Cel

                            Kel = Cel + 273.15 ;        // Convert Celsius degree to Kelvin 
                            cout<<" The value of "<<Cel<<" degrees C in K is: "<< Kel <<endl;   //Display the value of Celsius degree in K

                            Fah = (Cel*9/5)+32 ;                    //Convert Celsius degree to Fahrenheit
                            cout<<" The value of " <<Cel<<" degrees C in F is: "<< Fah <<endl;      //Display the value of Celsius degree in F
                        }break;
                        case 'B': {
                            return main();
                        }break;
                    }
                } while( sop !=0);
            }break;
                case '3': { 
                    cout<< " This is a program to accept age and name. if the age is even, the names will be printed 10 times but if the age is odd, the names will be printed 5 times " <<endl;

                    int age;   //declare age 
                    string name;    // declare name

                    cout<< " Enter age: ";      //input age 
                    cin>> age;              // accept name
                    cin.ignore();

                    cout<< " Enter name: ";     // display Enter name
                    getline(cin, name);         // accepts input for name

            // if the age is even, the names will be printed 10 times
                     if( age % 2 ==0){                           //Condition
                    for(int N = 0 ; N < 10; N++){            //condition
                    cout<< name << endl;                // display the name 
                        }
                    }   

                // if the age is odd, the names will be printed 5 times
                    else {

                    for ( int N = 0 ; N < 5; N++){            //Condition
                    cout << name<< endl;     //display the name 
                        }
                }
            }break;
                case '4':{
                    cout<< " this is a Program to to accept the current temperature and display the following messages based on the range " <<endl;
                    int temp;  // Declare Temp as Temperaeture
                    cout << "Enter Temperature: ";    // Input Temperature
                    cin>> temp;         // Accept Temp
                    if ( cin.fail()){        // if it is not a number
                    cout<< "Invalid input"<< endl;     // display Invalid input
                    }

                else if ( temp >=41 and temp <= 54)   // if temperature is between 41 and 54
                {
                    cout << "Stay hydrated!" << endl;       // display Stay hydrated

                }
                else if ( temp >= 32 and temp <= 40 )       // if temperature is between 32 and 40
                {
                    cout <<  "Stay Cool and safe!"<< endl;     //display Stay Cool and safe!
                }
                else if ( temp >= 26 and temp <= 31)   // if the temperature is between 26 and 31
                    {
                        cout <<  "Keep a sunblock handy!"<< endl;      // display Keep a sunblock handy!

                    }
                else if ( temp >= 20 and temp <= 25 )       // if the temperature is between 20 and 25
                {
                    cout <<  "Alway keep your cool!"<< endl;       // display Alway keep your cool!
                
                }
                else if ( temp < 20 )           // if the temperature is below 20
                {
                    cout <<  "Cool breeze in the air!"<< endl;     // display Cool breeze in the air!
                
                }
                else                // if the temperature is not in range
                {
                cout<< " Value entered is out of range! "<< endl;      // display Value entered is out range
                }
            }break;
                case '5':{ 
                cout<< " // this is a program to accept a number and determine if it is a prime or composite. " <<endl;
                int N,D,F ;         // Declare N as number , D as divisor 
                bool isprime = true;        // declare isprime is true
                cout<< "Enter a number: " ;         //Print"Enter a number
                cin>> N;    	            // accept N as number

                for( D= 2; D<= ( N/2); D++ ){           //loop
                    if((N %D) == 0){                    //conditiom
                            isprime = false;            // isprime is false
                            cout<< N << " is a composite number." << endl;          //display  N is a composite number
                            break;                          // Break
                    }                                       // Close condition
                }                               // close loop
                if ( N== 0 or N ==1) {                  // condition
                    cout<< N << " is neither Prime nor Composite number.";          //display N is neither Prime nor Composite number
                    }                                   // close condition
                else if ( isprime){                         // condition
                    cout << N << " is a prime number."<<endl;                     // Display N is a prime number
                    }       // close condition
                else{                   // condition
                    cout<< "The factor of "<< N << " are :";                // Display the factor of N if it is a composite number
                    for( F = 1; F<= N; F++){                                // condition
                        if ( N % F == 0){           // condition
                            cout << F << " " ;          
                        }
                    }
                }
            } break;
            case '6':{
                cout<< " This is a program to read a lost of exam scores( interger percent scores, ranging from 0 to 100) and display the total number of grades "<< endl;
                int s,i;
                int a=0,b=0,c=0,d=0,f=0;
                cout<< " Enter Exam Score: ";
                
                for ( i = 0; i <=100; i++)
                {
                    cin>>s ;

                    if ( s>= 90 and s<= 100){
                        a++;
                    }
                    else if ( s>=80 and s<90){
                        b++;
                    }
                    else if ( s>=70 and s<80){
                        c++;
                    }
                    else if ( s>= 60 and s<70){
                        d++;
                    }
                    else if ( s>=0 and s<=59){
                        f++;
                    }
                    else if ( s>100){
                        cout<<" Out of range " <<endl;
                    }
                    else{
                        break;
                    }
                }
                cout<<" Number of A's: "<< a << endl;
                cout<<" Number of B's: "<< b << endl;
                cout<<" Number of C's: "<< c << endl;
                cout<<" Number of D's: "<< d << endl;
                cout<<" Number of F's: "<< f << endl;
                cout<<" Total Number of Scores: "<< a+b+c+d+f << endl;
            }break;
            case 'X': {
                exit(0);
            }break;
            default: { 
                cout<< " Invalid Input so please Input again"<<endl;
            }
        }
    } while ( option!=0 ); 
    if( option<8 or option >8){
        
    }
}


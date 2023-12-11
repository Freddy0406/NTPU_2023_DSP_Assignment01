#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <time.h>
#include <stdint.h>
#define M_PI 3.14159265358979323846


void simulate(int N,double freq, double tao, double RC,char txt[]){

    double **yn = (double**)malloc(sizeof(double*)*2);
    int z;
    for (z = 0; z < 2; z++)
        yn[z] = (double*)malloc(sizeof(double)*(N+N/2));                //To simulate truncated sinusoid, zero-padding N/2
    double result = 0.0;

    for(int i = 0;i < 2 ; i++){
        for(int k =0; k<(N+N/2);k++){
            yn[i][k] = 0.0;
        }
    }   

    double omega = 2*M_PI*freq;
    double c1 = RC/(RC+tao);
    double c2 = tao/(RC+tao);

    double *cos_array = (double*)malloc(sizeof(double)*(N+N/2));
    double *sin_array = (double*)malloc(sizeof(double)*(N+N/2));

    for(int k =0; k<(N+N/2);k++){
        cos_array[k] = 0.0;
        cos_array[k] = 0.0;
    }   


    for(int a = 0;a<N;a++){                                             
        cos_array[a] = cos((2*M_PI*freq*(double)a*tao)-atan((c1*sin(omega))/(1-c1*cos(omega))));
        sin_array[a] = sin((2*M_PI*freq*(double)a*tao)-atan((c1*sin(omega))/(1-c1*cos(omega))));
    }

    double mag =  c2/sqrt(1-2*c1*cos(omega)+pow(c1,2));


    
    FILE *txtfp;                                                        //Open a txt file
    txtfp=fopen(txt,"wb");
    if(txtfp==NULL){
        printf( "open failure" );
    }
    else{
        
        for(int a = 0; a < (N+N/2); a++){
      
            yn[0][a] = mag*cos_array[a];
            yn[1][a] = mag*sin_array[a];

        
            fprintf(txtfp,"%lf\t%lf\n",yn[0][a],yn[1][a]);      //write into txt
            fflush(txtfp);                                      //clear cache
        }
        for (int i = 0; i < 2; i++)                             //free 2-dim malloc
            free(yn[i]);
        free(yn);
        free(cos_array);
        free(sin_array);                             
        fclose(txtfp);                                          //close txt file
        fflush(txtfp);
    }
}

void gen_original(int N,double freq,char txt[]){
    double *cos_array = (double*)malloc(sizeof(double)*N);
    double *sin_array = (double*)malloc(sizeof(double)*N);

    for(int a = 0;a<N;a++){                                             //Create cos and sin data (Represent x[n] = e^(j*omega*n/N) in euler's form)
        cos_array[a] = cos(2*M_PI*freq*(double)a/N);
        sin_array[a] = sin(2*M_PI*freq*(double)a/N);
    }
        FILE *txtfp;                                                        //Open a txt file
    txtfp=fopen(txt,"wb");
    if(txtfp==NULL){
        printf( "open failure" );
    }
    else{

        for(int a = 0; a < N; a++){
            fprintf(txtfp,"%lf\t%lf\n",cos_array[a],sin_array[a]);     //write into txt
            fflush(txtfp);                                   //clear cache
        }

        free(cos_array);
        free(sin_array);                               
        fclose(txtfp);                                       //close txt file
        fflush(txtfp);
    }
}


int main(int argc, char *argv[]){

    double R_C = 1000.0*(1.0/(2.0*M_PI))*(1.0/400000.0);                  //R*C
    int N = 20000;                                                      //Total points

    gen_original(N,100.0,"100hz.txt");
    simulate(4000,100.0,(1.0/4000.0),R_C,"100hz{4000}.txt");
    simulate(8000,100.0,(1.0/8000.0),R_C,"100hz{8000}.txt");
    simulate(16000,100.0,(1.0/16000.0),R_C,"100hz{16000}.txt");

    gen_original(N,400.0,"400hz.txt");
    simulate(N,400.0,(1.0/4000.0),R_C,"400hz{4000}.txt");
    simulate(N,400.0,(1.0/8000.0),R_C,"400hz{8000}.txt");
    simulate(N,400.0,(1.0/16000.0),R_C,"400hz{16000}.txt");

    gen_original(N,3000.0,"3000hz.txt");
    simulate(N,3000.0,(1.0/4000.0),R_C,"3000hz{4000}.txt");
    simulate(N,3000.0,(1.0/8000.0),R_C,"3000hz{8000}.txt");
    simulate(N,3000.0,(1.0/16000.0),R_C,"3000hz{16000}.txt");

}
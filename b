#include <stdio.h>      */cabecera: marca las librerias que incluyo*/
#include <stdlib.h>

int main ()
{
    const float PUNTOSxEURO = 0.25;
    int producto, producto_max,n, producto_perfumeria;    //a�ado producto perfumeria//
    float precio, precio_max, total, media, media_perfumeria, total_perfumeria;  //a�ado total_perfumeria//
    int totalSinPerfumeria;

    total = 0.0;
    media = 0.0;
    media_perfumeria = 0.0;                             //asigno valor inicial a media_perfumeria//
    precio_max = 0.0;
    producto_max = 0;
    total_perfumeria = 0.0;                             //asigno valor inicial a total_perfumeria//
    printf("Selecciona codigo producto: ");
    scanf("%d", &producto);
    n = 0;

    while (producto>0)
    {
        if (producto>299 && producto<451)               //creo un si entre el producto 300 y 450//
        {
            printf("Producto perfumeria \n");           //Escribir en pantalla: Producto prefumeria//
            printf("Precio producto: ");                //Escribir en pantalla precio producto//
            scanf("%f", &precio);                       // precio le asigno leer float//
            total_perfumeria = total_perfumeria + precio; //a�ado el precio del produto a total perfumeria//
        }
        else                                                //creo sino, para el resto de productos//
        {
            printf("Precio producto: ");
            scanf("%f", &precio);
            total = total + precio;
            if (precio > precio_max)
            {
                precio_max = precio;
                producto_max = producto;
            }
        }
        printf("Selecciona otro codigo producto: ");
        scanf("%d", &producto);
        n = n +1;

    }
    media = total/(float)n;
    media_perfumeria = total_perfumeria/ (float)n;           // le digo como conseguir media pefumeria, divido total perfumeria entre n//
    total = total + total_perfumeria;                       //creo un total general, que sume total y el total de perfumeria//
    printf("total: ""%f \n", total);
    printf("total perfumeria: ""%f \n", total_perfumeria);  //que aparezca total perfumeria por pantalla, que lea un float, un salto de linea para que sea más legible y le asigno el valor a total_perfumeria//
    printf("Media:  %f\n", media);
    printf("Media de perfumeria:  %f\n", media_perfumeria); //que aparezca en pantalla Media de perfumeria, ser� un float, le doy un salto de linea y lo asigno a media perfumeria//
    printf("codigo maximo: ""%d \n", producto_max);
    printf("Puntos acumulados: ""%f \n", PUNTOSxEURO * total);
    return 0;
}

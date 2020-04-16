syms z

F1 = (0.5+0.5*z^-2);   %Übertragungsfunktion von Bandsperre

Y_i = F1*1;                     %Impulseantwort
Y_s = F1*z/(z-1);               %Sprungantwort 

iztrans(Y_i)
iztrans(Y_s)
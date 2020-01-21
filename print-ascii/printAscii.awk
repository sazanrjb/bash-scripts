BEGIN {
    Ascii[0] = "NUL" 
    Ascii[1] = "SOH"
    Ascii[2] = "STX"
    Ascii[3] = "ETX"
    Ascii[4] = "EOT"
    Ascii[5] = "ENQ"
    Ascii[6] = "ACK"
    Ascii[7] = "BEL"
    Ascii[8] = "BS"
    Ascii[9] = "TAB"
    Ascii[10] = "NL"
    Ascii[11] = "VT"
    Ascii[12] = "NP"
    Ascii[13] = "CR"
    Ascii[14] = "SO"
    Ascii[15] = "SI"
    Ascii[16] = "DLE"
    Ascii[17] = "DC1"
    Ascii[18] = "DC2"
    Ascii[19] = "DC3"
    Ascii[20] = "DC4"
    Ascii[21] = "NAK"
    Ascii[22] = "SYN"
    Ascii[23] = "ETB"
    Ascii[24] = "CAN"
    Ascii[25] = "EM"
    Ascii[26] = "SUB"
    Ascii[27] = "ESC"
    Ascii[28] = "FS"
    Ascii[29] = "GS"
    Ascii[30] = "RS"
    Ascii[31] = "US"
    Ascii[32] = "SP"
    Ascii[127] = "DEL"
}
END {
    for (i = 0; i <= 127; i++)
        if (length(Ascii[i]) > 0)
            printf "%d %03o %02x %s\n", i, i, i, Ascii[i];
        else
            printf "%d %03o %02x %c\n", i, i, i, i;
}

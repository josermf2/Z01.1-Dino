/**
 * Curso: Elementos de Sistemas
 * Arquivo: Code.java
 */


package assembler;

/**
 * Traduz mnemônicos da linguagem assembly para códigos binários da arquitetura Z0.
 */
public class Code {

    /**
     * Retorna o código binário do(s) registrador(es) que vão receber o valor da instrução.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 4 bits) com código em linguagem de máquina para a instrução.
     */
    public static String dest(String[] mnemnonic) {
        if (!mnemnonic[0].equals("movw")) {
            switch (mnemnonic[mnemnonic.length - 1]) {
                case "%A":
                    return "0001";
                case "%D":
                    return "0010";
                case "(%A)":
                    return "0100";
                default:
                    return "0000";
            }
        }
        if (mnemnonic.length == 3) {
            switch (mnemnonic[2]) {
                case "%A":
                    return "0001";
                case "%D":
                    return "0010";
                case "(%A)":
                    return "0100";
                default:
                    return "0000";
            }
        }
        if (mnemnonic.length == 4) {
            switch (mnemnonic[2] + mnemnonic[3]) {
                case "%D%A":
                    return "0011";
                case "%A%D":
                    return "0011";
                case "(%A)%A":
                    return "0001";
                case "%D%D":
                    return "0010";
                case "%A%A":
                    return "0001";
                case "(%A)%D":
                    return "0110";
                case "%D(%A)":
                    return "0110";
                default:
                    return "0000";
            }
        }

        if (mnemnonic.length == 5) {
            switch (mnemnonic[2] + mnemnonic[3] + mnemnonic[4]) {
                case "(%A)%A%D":
                    return "0111";
                case "(%A)%D%A":
                    return "0111";
                case "%A(%A)%D":
                    return "0111";
                case "%A%D(%A)":
                    return "0111";
                case "%D(%A)%A":
                    return "0111";
                case "%D%A(%A)":
                    return "0111";
                default:
                    return "0000";
            }
        }
        return "0000";
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de cálculo.
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 7 bits) com código em linguagem de máquina para a instrução.
     */
    public static String comp(String[] mnemnonic) {
        if (mnemnonic[0].startsWith("incw")){
            switch (mnemnonic[1]){
                case "%A"   : return "000110111";
                case "%D"   : return "000011111";
                case "(%A)" : return "001110111";
                default     : return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("decw")){
            switch (mnemnonic[1]){
                case "%A"   : return "000110010";
                case "%D"   : return "000001110";
                case "(%A)" : return "001110010";
                default     : return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("notw")){
            switch (mnemnonic[1]){
                case "%A"   : return "000110001";
                case "%D"   : return "000001101";
                case "(%A)" : return "001110001";
                default     : return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("negw")){
            switch (mnemnonic[1]){
                case "%A"   : return "000110011";
                case "%D"   : return "000001111";
                case "(%A)" : return "001110011";
                default     : return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("movw")){
            switch (mnemnonic[1]){
                case "$1"   : return "000111111";
                case "$0"   : return "000101010";
                case "$-1"  : return "000111010";
                case "%A"   : return "000110000";
                case "%D"   : return "000001100";
                case "(%A)" : return "001110000";
                default     : return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("andw")){
            if (mnemnonic[1].startsWith("%A")) {
                return "000000000";
            }
            if (mnemnonic[1].startsWith("(%A)")) {
                return "001000000";
            }
            if (mnemnonic[1].startsWith("%D")){
                switch (mnemnonic[2]) {
                    case "%A"   : return "000000000";
                    default     : return "001000000";
                }
            }
        }

        if (mnemnonic[0].startsWith("orw")) {
            if (mnemnonic[1].startsWith("%A")) {
                return "000010101";
            }
            if (mnemnonic[1].startsWith("(%A)")) {
                return "001010101";
            }
            if (mnemnonic[1].startsWith("%D")) {
                switch (mnemnonic[2]) {
                    case "%A"   : return "000010101";
                    default     : return "001010101";
                }
            }
        }
        if (mnemnonic[0].startsWith("subw")){
            if (mnemnonic[1].startsWith("$1") && mnemnonic[2].startsWith("%D")){
                return "000001110";
            }
            if (mnemnonic[1].startsWith("%D") && mnemnonic[2].startsWith("$1")){
                return "000001110";
            }
            if (mnemnonic[1].startsWith("%A") && mnemnonic[2].startsWith("$1")){
                return "000110010";
            }
            if (mnemnonic[1].startsWith("(%A)") && mnemnonic[2].startsWith("$1")){
                return "001110010";
            }
            if (mnemnonic[1].startsWith("%A")){
                return "000000111";
            }
            if (mnemnonic[1].startsWith("(%A)")){
                return "001000111";
            }
            if (mnemnonic[2].startsWith("%A")){
                return "000010011";
            }
            if (mnemnonic[2].startsWith("(%A)")){
                return "001010011";
            }
            else {
                return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("rsubw")){
            if (mnemnonic[1].startsWith("$1") && mnemnonic[2].startsWith("%D")){
                return "000001110";
            }
            if (mnemnonic[1].startsWith("%D") && mnemnonic[2].startsWith("$1")){
                return "000001110";
            }
            if (mnemnonic[2].startsWith("%A") && mnemnonic[1].startsWith("$1")){
                return "000110010";
            }
            if (mnemnonic[2].startsWith("(%A)") && mnemnonic[1].startsWith("$1")){
                return "001110010";
            }
            if (mnemnonic[1].startsWith("(%A)")){
                return "001010011";
            }
            if (mnemnonic[2].startsWith("%A")){
                return "000000111";
            }
            if (mnemnonic[2].startsWith("(%A)")){
                return "001000111";
            }
            if (mnemnonic[1].startsWith("%A")){
                return "000010011";
            }
            else {
                return "000000000";
            }
        }

        if (mnemnonic[0].startsWith("addw")){
            switch (mnemnonic[1] + mnemnonic[2]){
                case "%A$1": return "000110111";
                case "$1%A": return "000110111";
                case "(%A)$1": return "001110111";
                case "$1(%A)": return "001110111";
                case "$1%D": return "000011111";
                case "%D$1": return "000011111";
                case "%D(%A)": return "001000010";
            }
            switch (mnemnonic[1]) {
                case "%A": return "000000010";
                case "%D": return "000000010";
                case "(%A)": return "001000010";
                case "$1": return "001110111";
                }
        }

        if (mnemnonic[0].startsWith("jmp")){
            return "000001100";
        }

        if (mnemnonic[0].startsWith("je")){
            return "000001100";
        }

        if (mnemnonic[0].startsWith("jne")){
            return "000001100";
        }

        if (mnemnonic[0].startsWith("jg")){
            return "000001100";
        }

        if (mnemnonic[0].startsWith("jge")) {
            return "000001100";
        }

        if (mnemnonic[0].startsWith("jl")){
            return "000001100";
        }

        if (mnemnonic[0].startsWith("jle")){
            return "000001100";
        }

        else{
            return "000000000";
        }
    }

    /**
     * Retorna o código binário do mnemônico para realizar uma operação de jump (salto).
     * @param  mnemnonic vetor de mnemônicos "instrução" a ser analisada.
     * @return Opcode (String de 3 bits) com código em linguagem de máquina para a instrução.
     */
    public static String jump(String[] mnemnonic) {
        switch (mnemnonic[0]){
            case "jmp"  : return "111";
            case "je"   : return "010";
            case "jne"  : return "101";
            case "jg"   : return "001";
            case "jge"  : return "011";
            case "jl"   : return "100";
            case "jle"  : return "110";
            default     : return "000";
        }
    }
    /**
     * Retorna o código binário de um valor decimal armazenado numa String.
     * @param  symbol valor numérico decimal armazenado em uma String.
     * @return Valor em binário (String de 15 bits) representado com 0s e 1s.
     */
    public static String toBinary(String symbol) {
        int i = Integer.parseInt(symbol);
        String bin = Integer.toBinaryString(i);
        String repeated = "";
        if (bin.length() < 16){
            String zero = "0";
            repeated += zero.repeat(16-bin.length());
        }
        return repeated + bin;
    }
}
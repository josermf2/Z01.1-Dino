/**
 * Curso: Elementos de Sistemas
 * Arquivo: Parser.java
 */

package assembler;

import java.io.BufferedReader;

import java.io.FileNotFoundException;

import java.io.FileReader;

import java.io.IOException;

/**
 * Encapsula o código de leitura. Carrega as instruções na linguagem assembly,
 * analisa, e oferece acesso as partes da instrução  (campos e símbolos).
 * Além disso, remove todos os espaços em branco e comentários.
 */

public class Parser {

    private final BufferedReader fileReader;
    public String inputFile;		       
    public int lineNumber = 0;		     	
    public String currentCommand = "";      
    public String currentLine;			    



    /** Enumerator para os tipos de comandos do Assembler. */
    public enum CommandType {

        A_COMMAND,
        C_COMMAND,
        L_COMMAND
    }


    /**
     * Abre o arquivo de entrada NASM e se prepara para analisá-lo.
     * @param file arquivo NASM que será feito o parser.
     */

    public Parser(String file) throws FileNotFoundException {

        this.inputFile = file;
        this.fileReader = new BufferedReader(new FileReader(file));
        this.lineNumber = 0;
    }

    public void close() throws IOException {

        fileReader.close();
    }

    /**
     * Carrega uma instrução e avança seu apontador interno para o próxima
     * linha do arquivo de entrada. Caso não haja mais linhas no arquivo de
     * entrada o método retorna "Falso", senão retorna "Verdadeiro".
     * @return Verdadeiro se ainda há instruções, Falso se as instruções terminaram.
     */

    public Boolean advance() {
        /* ja esta pronto */
        while(true){
            try {
                currentLine = fileReader.readLine();
            } catch (IOException e) {
                e.printStackTrace();
            }
            lineNumber++;
            if (currentLine == null)
                return false;  
            currentCommand = currentLine.replaceAll(";.*$", "").trim();
            if (currentCommand.equals(""))
                continue;
            return true;   
        }
    }

    /**
     * Retorna o comando "intrução" atual (sem o avanço)
     * @return a instrução atual para ser analilisada
     */
    public String command() {
        /* ja esta pronto */
        return currentCommand;
    }

    /**
     * Retorna o tipo da instrução passada no argumento:
     *  A_COMMAND para leaw, por exemplo leaw $1,%A
     *  L_COMMAND para labels, por exemplo Xyz: , onde Xyz é um símbolo.
     *  C_COMMAND para todos os outros comandos
     * @param  command instrução a ser analisada.
     * @return o tipo da instrução.
     */

    public CommandType commandType(String command) {

        String[] commands = command.split("\\s");
        if (commands[0].equals("leaw")) {
            return CommandType.A_COMMAND;
        }

        else if (commands[0].equals("movw")   || commands[0].equals("addw")  || commands[0].equals("subw") || commands[0].equals("rsubw")
                || commands[0].equals("incw") || commands[0].equals("decw")  || commands[0].equals("notw") || commands[0].equals("negw")
                || commands[0].equals("andw") || commands[0].equals("orw")   || commands[0].equals("jmp")  || commands[0].equals("je")
                || commands[0].equals("jne")  || commands[0].equals("jg")    || commands[0].equals("jge")  || commands[0].equals("jle")
                || commands[0].equals("nop")) {

            return CommandType.C_COMMAND;
        }
        else {
            return CommandType.L_COMMAND;
        }
    }

    /**
     * Retorna o símbolo ou valor numérico da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é A_COMMAND.
     * @param  command instrução a ser analisada.
     * @return somente o símbolo ou o valor número da instrução.
     */

    public String symbol(String command) {
        String[] commands = command.replaceAll(",+", " ").replaceAll("\\$+", "").split("\\s");

        if (commandType(command) == CommandType.A_COMMAND) {
            return commands[1];
        }

        else {
            return null;
        }
    }

    /**
     * Retorna o símbolo da instrução passada no argumento.
     * Deve ser chamado somente quando commandType() é L_COMMAND.
     * @param  command instrução a ser analisada.
     * @return o símbolo da instrução (sem os dois pontos).
     */

    public String label(String command) {

        if (commandType(command) == CommandType.L_COMMAND) {
            return command.replaceAll(":", "");
        }

        else {
            return null;
        }

    }

    /**
     * Separa os mnemônicos da instrução fornecida em tokens em um vetor de Strings.
     * Deve ser chamado somente quando CommandType () é C_COMMAND.
     * @param  command instrução a ser analisada.
     * @return um vetor de string contento os tokens da instrução (as partes do comando).
     */

    public String[] instruction(String command) {
        String[] commands = command.replaceAll(",", " ").split("\\s");

        return commands;

    }

}
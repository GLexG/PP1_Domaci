package rs.ac.bg.etf.pp1;

public class sym {

		//Keywords
		
		public static final int PROGRAM = 1;
		public static final int	BREAK = 2;
		public static final int	CLASS = 3;
		public static final int	ELSE = 4;
		public static final int	CONST = 5;
		public static final int IF = 6;
		public static final int NEW = 7;
		public static final int PRINT = 8;
		public static final int READ = 9;
		public static final int RETURN = 10;
		public static final int VOID = 11;	//metode mogu da imaju indentifikator tipa vrednosti ili ident tipa VOID zato ubacujemo VOID
		public static final int WHILE = 12;
		public static final int EXTENDS = 13;
		
		//Tokens
		public static final int IDENT = 14;
		public static final int NUMBER = 15; // number = digit {digit}
		public static final int CHARCONST = 16;
		public static final int BOOLCONST = 17;
		public static final int STRCONST = 18;
		
		//Operators
		public static final int PLUS = 19;
		public static final int MINUS = 20;
		public static final int STAR = 21;
		public static final int SLASH = 22;  //   
		public static final int PERCENT= 23;
		public static final int EEQUALS =24; // ==
		public static final int NEQUALS = 25;// !=
		public static final int GREATER = 26;
		public static final int EGREATER = 27; // >=
		public static final int LESS = 28;
		public static final int ELESS = 29;
		public static final int AND = 30; //&&
		public static final int OR = 31;  //||
		public static final int EQUALS = 32; 
		public static final int	PPLUS = 33; // ++
		public static final int	MMINUS = 34; // --
		public static final int SEMICOMA = 35; // ;
		public static final int	COMMA = 36;	// ,
		public static final int POINT = 37; // .
		public static final int	LPAREN= 38;
		public static final int RPAREN = 39;
		public static final int	LSQBRACE = 40;
		public static final int RSQBRACE = 41;
		public static final int LBRACE = 42;
		public static final int RBRACE= 43; 
		public static final int EOF = 44;	//stigli smo do kraja
		public static final int ERROR = 45;
		
		public static final int BOOLVAL = 46;
		

	

}

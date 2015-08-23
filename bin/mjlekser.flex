
package rs.ac.bg.etf.pp1;
import java_cup.runtime.Symbol;



%%

%{

	//ukljucivanje informacije o poziciji tokena
	private Symbol new_symbol(int type){
		return new Symbol(type, yyline+1,yycolumn);
	}
	
	//ukljucivanje informacije o poziciji tokena
	private Symbol new_symbol(int type,Object value){
		return new ?Symbol(type,yyline+1,yycolumn,value);
	}
	
	

%}

%cup
%line
%column

%xstate COMMENT

%eofval{

return new_symbol(sym.eof)

%eofval}

%%

""		{ }	
"\b"	{ }
"\t"	{ }
"\r\n"	{ }
"\f"	{ }

"program" { return new_symbol(sym.PROGRAM, yytext()); }   -regurlarni izraz, akcija pravljenja tokena yytext()-vraca sekvencu znakova koji su trenutno procitani
"break"		{ return new_symbol(sym.BREAK, yytext()); }
"class"	{ return new_symbol(sym.CLASS, yytext()); }
"else"		{ return new_symbol(sym.ELSE, yytext()); }
"const"		{ return new_symbol(sym.CONST, yytext()); }
"if"		{ return new_symbol(sym.IF, yytext()); }
"new"		{ return new_symbol(sym.NEW, yytext()); }
"print"		{ return new_symbol(sym.PRINT, yytext()); }
"read"		{ return new_symbol(sym.READ, yytext()); }
"return"		{ return new_symbol(sym.RETURN, yytext()); }
"void"		{ return new_symbol(sym.VOID, yytext()); }
"while"		{ return new_symbol(sym.WHILE, yytext()); }
"extends"		{ return new_symbol(sym.EXTENDS, yytext()); }

"+" { return new_symbol(sym.PLUS, yytext()); }
"-" { return new_symbol(sym.MINUS, yytext()); }
"*" { return new_symbol(sym.STAR, yytext()); }
"/" { return new_symbol(sym.SLASH, yytext()); }
"%" { return new_symbol(sym.PERCENT, yytext()); }
"==" { return new_symbol(sym.EEQUALS, yytext()); }
"!=" { return new_symbol(sym.NEQUALS, yytext()); }
">" { return new_symbol(sym.GREATER, yytext()); }
">=" { return new_symbol(sym.EGREATER, yytext()); }
"<" { return new_symbol(sym.LESS, yytext()); }
"<=" { return new_symbol(sym.ELESS, yytext()); }
"&&" { return new_symbol(sym.AND, yytext()); }
"||" { return new_symbol(sym.OR, yytext()); }
"=" { return new_symbol(sym.EQUALS, yytext()); }
"++" { return new_symbol(sym.PPLUS, yytext()); }
"--" { return new_symbol(sym.MMINUS, yytext()); }
";" { return new_symbol(sym.SEMICOMA, yytext()); }
"," { return new_symbol(sym.COMMA, yytext()); }
"." { return new_symbol(sym.POINT, yytext()); }
"(" { return new_symbol(sym.LBRACE, yytext()); }
")" { return new_symbol(sym.RBRACE, yytext()); }
"[" { return new_symbol(sym.LSQBRACE, yytext()); } 
"]" { return new_symbol(sym.RSQBRACE, yytext()); }
"{" { return new_symbol(sym.LPAREN, yytext()); }
"}" { return new_symbol(sym.RPAREN, yytext()); }

"true" { return new_symbol(sym.BOOLVAL, new Boolean(true)); }
"false" { return new_symbol(sym.BOOLVAL, new Boolean(false)); }


"//" 		{ yybegin(COMMENT); }
		
<COMMENT> . { yybegin(COMMENT); }

<COMMENT> "\r\n" { yybegin(YYINITIAL); } 

{0-9}+ { return new_symbol(sym.NUMBER, new Integer(yytext())); }
([a-z]|[A-Z])[a-z|A-Z|0-9|_]* { return new_symbol (sym.IDENT, yytext()); }  

 . { System.err.println("Leksicka greska ("+yytext()+") u liniji "+(yyline+1)); }   




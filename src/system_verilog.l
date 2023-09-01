/*****************************************************************************
 * System Verilog Lexer/Parser                                               *
 * Copyright (C) 2023  RISCY-Lib Contributors                                *
 *                                                                           *
 * This library is free software; you can redistribute it and/or             *
 * modify it under the terms of the GNU Lesser General Public                *
 * License as published by the Free Software Foundation; either              *
 * version 2.1 of the License, or (at your option) any later version.        *
 *                                                                           *
 * This library is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of            *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU         *
 * Lesser General Public License for more details.                           *
 *                                                                           *
 * You should have received a copy of the GNU Lesser General Public          *
 * License along with this library; if not, write to the Free Software       *
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301 *
 * USA                                                                       *
 *****************************************************************************/

/*** Definition Section ***/
%{
  // *NOTE* C-code
%}

/*** Rules Section ***/
%%
"accept_on"           { return ACCEPT_ON; }
"alias"               { return ALIAS; }
"always"              { return ALWAYS; }
"always_comb"         { return ALWAYS_COMB; }
"always_ff"           { return ALWAYS_FF; }
"always_latch"        { return ALWAYS_LATCH; }
"and"                 { return AND; }
"assert"              { return ASSERT; }
"assign"              { return ASSIGN; }
"assume"              { return ASSUME; }
"automatic"           { return AUTOMATIC; }
"before"              { return BEFORE; }
"begin"               { return BEGIN; }
"bind"                { return BIND; }
"bins"                { return BINS; }
"binsof"              { return BINSOF; }
"bit"                 { return BIT; }
"break"               { return BREAK; }
"buf"                 { return BUF; }
"bufif0"              { return BUFIF0; }
"bufif1"              { return BUFIF1; }
"byte"                { return BYTE; }
"case"                { return CASE; }
"casex"               { return CASEX; }
"casez"               { return CASEZ; }
"cell"                { return CELL; }
"chandle"             { return CHANDLE; }
"checker"             { return CHECKER; }
"class"               { return CLASS; }
"clocking"            { return CLOCKING; }
"cmos"                { return CMOS; }
"config"              { return CONFIG; }
"const"               { return CONST; }
"constraint"          { return CONSTRAINT; }
"context"             { return CONTEXT; }
"continue"            { return CONTINUE; }
"cover"               { return COVER; }
"covergroup"          { return COVERGROUP; }
"coverpoint"          { return COVERPOINT; }
"cross"               { return CROSS; }
"deassign"            { return DEASSIGN; }
"default"             { return DEFAULT; }
"defparam"            { return DEFPARAM; }
"design"              { return DESIGN; }
"disable"             { return DISABLE; }
"dist"                { return DIST; }
"do"                  { return DO; }
"edge"                { return EDGE; }
"else"                { return ELSE; }
"end"                 { return END; }
"endcase"             { return ENDCASE; }
"endchecker"          { return ENDCHECKER; }
"endclass"            { return ENDCLASS; }
"endclocking"         { return ENDCLOCKING; }
"endconfig"           { return ENDCONFIG; }
"endfunction"         { return ENDFUNCTION; }
"endgenerate"         { return ENDGENERATE; }
"endgroup"            { return ENDGROUP; }
"endinterface"        { return ENDINTERFACE; }
"endmodule"           { return ENDMODULE; }
"endpackage"          { return ENDPACKAGE; }
"endprimitive"        { return ENDPRIMITIVE; }
"endprogram"          { return ENDPROGRAM; }
"endproperty"         { return ENDPROPERTY; }
"endspecify"          { return ENDSPECIFY; }
"endsequence"         { return ENDSEQUENCE; }
"endtable"            { return ENDTABLE; }
"endtask"             { return ENDTASK; }
"enum"                { return ENUM; }
"event"               { return EVENT; }
"eventually"          { return EVENTUALLY; }
"expect"              { return EXPECT; }
"export"              { return EXPORT; }
"extends"             { return EXTENDS; }
"extern"              { return EXTERN; }
"final"               { return FINAL; }
"first_match"         { return FIRST_MATCH; }
"for"                 { return FOR; }
"force"               { return FORCE; }
"foreach"             { return FOREACH; }
"forever"             { return FOREVER; }
"fork"                { return FORK; }
"forkjoin"            { return FORKJOIN; }
"function"            { return FUNCTION; }
"generate"            { return GENERATE; }
"genvar"              { return GENVAR; }
"global"              { return GLOBAL; }
"highz0"              { return HIGHZ0; }
"highz1"              { return HIGHZ1; }
"if"                  { return IF; }
"iff"                 { return IFF; }
"ifnone"              { return IFNONE; }
"ignore_bins"         { return IGNORE_BINS; }
"illegal_bins"        { return ILLEGAL_BINS; }
"implements"          { return IMPLEMENTS; }
"implies"             { return IMPLIES; }
"import"              { return IMPORT; }
"incdir"              { return INCDIR; }
"include"             { return INCLUDE; }
"initial"             { return INITIAL; }
"inout"               { return INOUT; }
"input"               { return INPUT; }
"inside"              { return INSIDE; }
"instance"            { return INSTANCE; }
"int"                 { return INT; }
"integer"             { return INTEGER; }
"interconnect"        { return INTERCONNECT; }
"interface"           { return INTERFACE; }
"intersect"           { return INTERSECT; }
"join"                { return JOIN; }
"join_any"            { return JOIN_ANY; }
"join_none"           { return JOIN_NONE; }
"large"               { return LARGE; }
"let"                 { return LET; }
"liblist"             { return LIBLIST; }
"library"             { return LIBRARY; }
"local"               { return LOCAL; }
"localparam"          { return LOCALPARAM; }
"logic"               { return LOGIC; }
"longint"             { return LONGINT; }
"macromodule"         { return MACROMODULE; }
"matches"             { return MATCHES; }
"medium"              { return MEDIUM; }
"modport"             { return MODPORT; }
"module"              { return MODULE; }
"nand"                { return NAND; }
"negedge"             { return NEGEDGE; }
"nettype"             { return NETTYPE; }
"new"                 { return NEW; }
"nexttime"            { return NEXTTIME; }
"nmos"                { return NMOS; }
"nor"                 { return NOR; }
"noshowcancelled"     { return NOSHOWCANCELLED; }
"not"                 { return NOT; }
"notif0"              { return NOTIF0; }
"notif1"              { return NOTIF1; }
"null"                { return NULL; }
"or"                  { return OR; }
"output"              { return OUTPUT; }
"package"             { return PACKAGE; }
"packed"              { return PACKED; }
"parameter"           { return PARAMETER; }
"pmos"                { return PMOS; }
"posedge"             { return POSEDGE; }
"primitive"           { return PRIMITIVE; }
"priority"            { return PRIORITY; }
"program"             { return PROGRAM; }
"property"            { return PROPERTY; }
"protected"           { return PROTECTED; }
"pull0"               { return PULL0; }
"pull1"               { return PULL1; }
"pulldown"            { return PULLDOWN; }
"pullup"              { return PULLUP; }
"pulsestyle_ondetect" { return PULSESTYLE_ONDETECT; }
"pulsestyle_onevent"  { return PULSESTYLE_ONEVENT; }
"pure"                { return PURE; }
"rand"                { return RAND; }
"randc"               { return RANDC; }
"randcase"            { return RANDCASE; }
"randsequence"        { return RANDSEQUENCE; }
"rcmos"               { return RCMOS; }
"real"                { return REAL; }
"realtime"            { return REALTIME; }
"ref"                 { return REF; }
"reg"                 { return REG; }
"reject_on"           { return REJECT_ON; }
"release"             { return RELEASE; }
"repeat"              { return REPEAT; }
"restrict"            { return RESTRICT; }
"return"              { return RETURN; }
"rnmos"               { return RNMOS; }
"rpmos"               { return RPMOS; }
"rtran"               { return RTRAN; }
"rtranif0"            { return RTRANIF0; }
"rtranif1"            { return RTRANIF1; }
"s_always"            { return S_ALWAYS; }
"s_eventually"        { return S_EVENTUALLY; }
"s_nexttime"          { return S_NEXTTIME; }
"s_until"             { return S_UNTIL; }
"s_until_with"        { return S_UNTIL_WITH; }
"scalared"            { return SCALARED; }
"sequence"            { return SEQUENCE; }
"shortint"            { return SHORTINT; }
"shortreal"           { return SHORTREAL; }
"showcancelled"       { return SHOWCANCELLED; }
"signed"              { return SIGNED; }
"small"               { return SMALL; }
"soft"                { return SOFT; }
"solve"               { return SOLVE; }
"specify"             { return SPECIFY; }
"specparam"           { return SPECPARAM; }
"static"              { return STATIC; }
"string"              { return STRING; }
"strong"              { return STRONG; }
"strong0"             { return STRONG0; }
"strong1"             { return STRONG1; }
"struct"              { return STRUCT; }
"super"               { return SUPER; }
"supply0"             { return SUPPLY0; }
"supply1"             { return SUPPLY1; }
"sync_accept_on"      { return SYNC_ACCEPT_ON; }
"sync_reject_on"      { return SYNC_REJECT_ON; }
"table"               { return TABLE; }
"tagged"              { return TAGGED; }
"task"                { return TASK; }
"this"                { return THIS; }
"throughout"          { return THROUGHOUT; }
"time"                { return TIME; }
"timeprecision"       { return TIMEPRECISION; }
"timeunit"            { return TIMEUNIT; }
"tran"                { return TRAN; }
"tranif0"             { return TRANIF0; }
"tranif1"             { return TRANIF1; }
"tri"                 { return TRI; }
"tri0"                { return TRI0; }
"tri1"                { return TRI1; }
"triand"              { return TRIAND; }
"trior"               { return TRIOR; }
"trireg"              { return TRIREG; }
"type"                { return TYPE; }
"typedef"             { return TYPEDEF; }
"union"               { return UNION; }
"unique"              { return UNIQUE; }
"unique0"             { return UNIQUE0; }
"unsigned"            { return UNSIGNED; }
"until"               { return UNTIL; }
"until_with"          { return UNTIL_WITH; }
"untyped"             { return UNTYPED; }
"use"                 { return USE; }
"uwire"               { return UWIRE; }
"var"                 { return VAR; }
"vectored"            { return VECTORED; }
"virtual"             { return VIRTUAL; }
"void"                { return VOID; }
"wait"                { return WAIT; }
"wait_order"          { return WAIT_ORDER; }
"wand"                { return WAND; }
"weak"                { return WEAK; }
"weak0"               { return WEAK0; }
"weak1"               { return WEAK1; }
"while"               { return WHILE; }
"wildcard"            { return WILDCARD; }
"wire"                { return WIRE; }
"with"                { return WITH; }
"within"              { return WITHIN; }
"wor"                 { return WOR; }
"xnor"                { return XNOR; }
"xor"                 { return XOR; }
%%

/*** C Code Section ***/
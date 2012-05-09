require 'rockit/rockit'
module Parse
  # Parser for RockitGrammar
  # created by Rockit version 0.3.8 on Mon Dec 02 20:05:20 CET 2002
  # Rockit is copyright (c) 2001 Robert Feldt, feldt@ce.chalmers.se
  # and licensed under GPL
  # but this parser is under LGPL
  tokens = [
    t1 = EofToken.new("EOF",/^(¤~~¤¤~^^~5348086680)/n),
    t2 = Token.new("Blank",/^(\s+)/n,:Skip),
    t3 = Token.new("Comment",/^(#.*$)/n,:Skip),
    t4 = Token.new("Regexp",/^(\/((\\\/)|[^\/])*\/[iomnux]*)/n),
    t5 = Token.new("String",/^(('((\\')|[^'])*')|("((\\")|[^"])*"))/n),
    t6 = Token.new("Arrow",/^((->)|(::=)|(:))/n),
    t7 = Token.new("Int",/^(\d+)/n),
    t8 = Token.new("SymbolName",/^([A-Z][A-Za-z_\d]*)/n),
    t9 = Token.new("LanguageName",/^([A-Za-z\d]+([-_]*[A-Za-z\d]+)*)/n),
    t10 = Token.new("ProductionReference",/^([A-Z][A-Za-z]*\d+)/n),
    t11 = StringToken.new("StrToken133007101","Grammar"),
    t12 = StringToken.new("StrToken-511371276","Tokens"),
    t13 = StringToken.new("StrToken62","="),
    t14 = StringToken.new("StrToken93","["),
    t15 = RegexpToken.new("RegexpToken538042562",/:Skip/in),
    t16 = StringToken.new("StrToken95","]"),
    t17 = StringToken.new("StrToken-904297951","Productions"),
    t18 = StringToken.new("StrToken64","?"),
    t19 = StringToken.new("StrToken44","+"),
    t20 = StringToken.new("StrToken43","*"),
    t21 = StringToken.new("StrToken41","("),
    t22 = StringToken.new("StrToken42",")"),
    t23 = StringToken.new("StrToken-171340643","list("),
    t24 = StringToken.new("StrToken45",","),
    t25 = StringToken.new("StrToken3923673",": "),
    t26 = StringToken.new("StrToken836483639","Priorities"),
    t27 = StringToken.new("StrToken127","|"),
    t28 = RegexpToken.new("RegexpToken538577468",/[a-z][a-z\d]*/n),
    t29 = StringToken.new("StrToken97","_"),
    t30 = StringToken.new("StrToken96","^"),
    t31 = StringToken.new("StrToken927166384","left("),
    t32 = StringToken.new("StrToken618373319","right("),
    t33 = StringToken.new("StrToken63",">")
  ]
  productions = [
    p1 = Production.new("Grammar'".intern,[:Grammar],SyntaxTreeBuilder.new("Grammar'",["grammar"],[])),
    p2 = Production.new(:Grammar,[t11, t9, :Tokens, :Productions, :Priorities],SyntaxTreeBuilder.new("Grammar",["_", "language", "tokens", "productions", "priorities"],[])),
    p3 = Production.new(:Grammar,[t11, t9, :Tokens, :Productions],SyntaxTreeBuilder.new("Grammar",["_", "language", "tokens", "productions", "priorities"],[4])),
    p4 = Production.new(:Grammar,[t11, t9, :Productions, :Priorities],SyntaxTreeBuilder.new("Grammar",["_", "language", "tokens", "productions", "priorities"],[2])),
    p5 = Production.new(:Grammar,[t11, t9, :Productions],SyntaxTreeBuilder.new("Grammar",["_", "language", "tokens", "productions", "priorities"],[2, 4])),
    p6 = Production.new(:Tokens,[t12, :Plus538048422],LiftingSyntaxTreeBuilder.new(["_", "tokens"],[])),
    p7 = Production.new(:Plus538048422,[:Plus538048422, :TokenSpec],ArrayNodeBuilder.new([1],0,nil,nil,[],true)),
    p8 = Production.new(:Plus538048422,[:TokenSpec],ArrayNodeBuilder.new([0],nil,nil,nil,[],true)),
    p9 = Production.new(:TokenSpec,[t8, t13, t5, :TokenOpts],SyntaxTreeBuilder.new("TokenSpec",["tokenname", "_", "regexp", "options"],[])),
    p10 = Production.new(:TokenSpec,[t8, t13, t5],SyntaxTreeBuilder.new("TokenSpec",["tokenname", "_", "regexp", "options"],[3])),
    p11 = Production.new(:TokenSpec,[t8, t13, t4, :TokenOpts],SyntaxTreeBuilder.new("TokenSpec",["tokenname", "_", "regexp", "options"],[])),
    p12 = Production.new(:TokenSpec,[t8, t13, t4],SyntaxTreeBuilder.new("TokenSpec",["tokenname", "_", "regexp", "options"],[3])),
    p13 = Production.new(:TokenOpts,[t14, t15, t16],LiftingSyntaxTreeBuilder.new(["_", "options", "_"],[])),
    p14 = Production.new(:Productions,[t17, :Plus538037652],SyntaxTreeBuilder.new("Productions",["_", "productions"],[])),
    p15 = Production.new(:Plus538037652,[:Plus538037652, :Prod],ArrayNodeBuilder.new([1],0,nil,nil,[],true)),
    p16 = Production.new(:Plus538037652,[:Prod],ArrayNodeBuilder.new([0],nil,nil,nil,[],true)),
    p17 = Production.new(:Prod,[t8, t6, :Alt, :List538034742],ArrayNodeBuilder.new([2],3,SyntaxTreeBuilder.new("Prod",["nonterminal", "_", "alts"],[]),2,[3],false)),
    p18 = Production.new(:Prod,[t8, t6, :Alt],ArrayNodeBuilder.new([2],nil,SyntaxTreeBuilder.new("Prod",["nonterminal", "_", "alts"],[]),2,[],true)),
    p19 = Production.new(:List538034742,[:List538034742, t27, :Alt],ArrayNodeBuilder.new([2],0,nil,nil,[],true)),
    p20 = Production.new(:List538034742,[t27, :Alt],ArrayNodeBuilder.new([1],nil,nil,nil,[],true)),
    p21 = Production.new(:Alt,[:Plus538032372, :AstSpec],SyntaxTreeBuilder.new("Alt",["elements", "astspec"],[])),
    p22 = Production.new(:Alt,[:Plus538032372],SyntaxTreeBuilder.new("Alt",["elements", "astspec"],[1])),
    p23 = Production.new(:Plus538032372,[:Plus538032372, :Element],ArrayNodeBuilder.new([1],0,nil,nil,[],true)),
    p24 = Production.new(:Plus538032372,[:Element],ArrayNodeBuilder.new([0],nil,nil,nil,[],true)),
    p25 = Production.new(:Element,[t8],LiftingSyntaxTreeBuilder.new([],[])),
    p26 = Production.new(:Element,[t5],SyntaxTreeBuilder.new("ImplicitToken",["regexp"],[])),
    p27 = Production.new(:Element,[t4],SyntaxTreeBuilder.new("ImplicitToken",["regexp"],[])),
    p28 = Production.new(:Element,[:Element, t18],SyntaxTreeBuilder.new("Maybe",["element", "_"],[])),
    p29 = Production.new(:Element,[:Element, t19],SyntaxTreeBuilder.new("Plus",["element", "_"],[])),
    p30 = Production.new(:Element,[:Element, t20],SyntaxTreeBuilder.new("Mult",["element", "_"],[])),
    p31 = Production.new(:Element,[t21, :Element, :List538599718, t22],ArrayNodeBuilder.new([1],2,SyntaxTreeBuilder.new("Or",["_", "elements", "_"],[]),1,[2],false)),
    p32 = Production.new(:Element,[t21, :Element, t22],ArrayNodeBuilder.new([1],nil,SyntaxTreeBuilder.new("Or",["_", "elements", "_"],[]),1,[],true)),
    p33 = Production.new(:List538599718,[:List538599718, t27, :Element],ArrayNodeBuilder.new([2],0,nil,nil,[],true)),
    p34 = Production.new(:List538599718,[t27, :Element],ArrayNodeBuilder.new([1],nil,nil,nil,[],true)),
    p35 = Production.new(:Element,[t21, :Plus538593838, t22],SyntaxTreeBuilder.new("Sequence",["_", "elements", "_"],[])),
    p36 = Production.new(:Plus538593838,[:Plus538593838, :Element],ArrayNodeBuilder.new([1],0,nil,nil,[],true)),
    p37 = Production.new(:Plus538593838,[:Element],ArrayNodeBuilder.new([0],nil,nil,nil,[],true)),
    p38 = Production.new(:Element,[t23, :Element, t24, :Element, t22],SyntaxTreeBuilder.new("List",["_", "element", "_", "delimiter"],[])),
    p39 = Production.new(:AstSpec,[t14, :ProdSpec, :ElemSpecs, t16],SyntaxTreeBuilder.new("AstSpec",["_", "prodspec", "elemspecs", "_"],[])),
    p40 = Production.new(:AstSpec,[t14, :ProdSpec, t16],SyntaxTreeBuilder.new("AstSpec",["_", "prodspec", "elemspecs", "_"],[2])),
    p41 = Production.new(:AstSpec,[t14, :ElemSpecs, t16],SyntaxTreeBuilder.new("AstSpec",["_", "prodspec", "elemspecs", "_"],[1])),
    p42 = Production.new(:AstSpec,[t14, t16],SyntaxTreeBuilder.new("AstSpec",["_", "prodspec", "elemspecs", "_"],[1, 2])),
    p43 = Production.new(:ElemSpecs,[t25, :ElemSpec, :List538580888],ArrayNodeBuilder.new([1],2,LiftingSyntaxTreeBuilder.new(["_", "specs"],[]),1,[2],false)),
    p44 = Production.new(:ElemSpecs,[t25, :ElemSpec],ArrayNodeBuilder.new([1],nil,LiftingSyntaxTreeBuilder.new(["_", "specs"],[]),1,[],true)),
    p45 = Production.new(:List538580888,[:List538580888, t24, :ElemSpec],ArrayNodeBuilder.new([2],0,nil,nil,[],true)),
    p46 = Production.new(:List538580888,[t24, :ElemSpec],ArrayNodeBuilder.new([1],nil,nil,nil,[],true)),
    p47 = Production.new(:ElemSpec,[t28],LiftingSyntaxTreeBuilder.new(["name"],[])),
    p48 = Production.new(:ElemSpec,[t29],LiftingSyntaxTreeBuilder.new(["name"],[])),
    p49 = Production.new(:ProdSpec,[t8],LiftingSyntaxTreeBuilder.new(["name"],[])),
    p50 = Production.new(:ProdSpec,[t30],LiftingSyntaxTreeBuilder.new(["name"],[])),
    p51 = Production.new(:Priorities,[t26, :Plus538571098],LiftingSyntaxTreeBuilder.new(["_", "priorities"],[])),
    p52 = Production.new(:Plus538571098,[:Plus538571098, :Priority],ArrayNodeBuilder.new([1],0,nil,nil,[],true)),
    p53 = Production.new(:Plus538571098,[:Priority],ArrayNodeBuilder.new([0],nil,nil,nil,[],true)),
    p54 = Production.new(:Priority,[t31, :ProdRef, :List538566228, t22],ArrayNodeBuilder.new([1],2,SyntaxTreeBuilder.new("Associativity",["relation", "productionrefs", "_"],[]),1,[2],false)),
    p55 = Production.new(:Priority,[t31, :ProdRef, t22],ArrayNodeBuilder.new([1],nil,SyntaxTreeBuilder.new("Associativity",["relation", "productionrefs", "_"],[]),1,[],true)),
    p56 = Production.new(:List538566228,[:List538566228, t24, :ProdRef],ArrayNodeBuilder.new([2],0,nil,nil,[],true)),
    p57 = Production.new(:List538566228,[t24, :ProdRef],ArrayNodeBuilder.new([1],nil,nil,nil,[],true)),
    p58 = Production.new(:Priority,[t32, :ProdRef, :List538566228, t22],ArrayNodeBuilder.new([1],2,SyntaxTreeBuilder.new("Associativity",["relation", "productionrefs", "_"],[]),1,[2],false)),
    p59 = Production.new(:Priority,[t32, :ProdRef, t22],ArrayNodeBuilder.new([1],nil,SyntaxTreeBuilder.new("Associativity",["relation", "productionrefs", "_"],[]),1,[],true)),
    p60 = Production.new(:Priority,[:ProdRef, :Plus538561788],SyntaxTreeBuilder.new("Precedence",["first", "rest"],[])),
    p61 = Production.new(:Plus538561788,[:Plus538561788, t33, :ProdRef],ArrayNodeBuilder.new([1, 2],0,nil,nil,[],true)),
    p62 = Production.new(:Plus538561788,[:Plus538561788, t13, :ProdRef],ArrayNodeBuilder.new([1, 2],0,nil,nil,[],true)),
    p63 = Production.new(:Plus538561788,[t33, :ProdRef],ArrayNodeBuilder.new([0, 1],nil,nil,nil,[],true)),
    p64 = Production.new(:Plus538561788,[t13, :ProdRef],ArrayNodeBuilder.new([0, 1],nil,nil,nil,[],true)),
    p65 = Production.new(:Priority,[:Priority, t24],LiftingSyntaxTreeBuilder.new(["priority", "_"],[])),
    p66 = Production.new(:ProdRef,[t8],LiftingSyntaxTreeBuilder.new([],[])),
    p67 = Production.new(:ProdRef,[t10],LiftingSyntaxTreeBuilder.new([],[]))
  ]
  relations = [
  
  ]
  priorities = ProductionPriorities.new(relations)
  action_table = [[5, 1024], [13, 256], [2, 1], [25, 65536, 29, 2048], [33, 33554432, 16, 1], [25, 65536], [45, 128], [57, 128], [69, 128, 77, 512, 81, 1073741824, 85, 2147483648], [12, 1], [33, 33554432, 8, 1], [101, 32], [60, 8589849273], [45, 128, 52, 7560237697], [109, 4096], [28, 1040183481], [57, 128, 20, 1040163001], [260, 7526683265], [117, 4294967296, 121, 4096], [264, 7526683265], [69, 128, 77, 512], [69, 128, 77, 512], [137, 8388608, 208, 7526683265], [69, 128, 77, 512, 81, 1073741824, 85, 2147483648, 200, 1], [4, 1], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [56, 8589849273], [177, 16, 181, 8], [24, 1040183481], [69, 128, 77, 512], [69, 128, 77, 512], [193, 4294967296, 197, 4096, 236, 7526683265], [205, 2097152, 209, 8388608], [217, 2097152, 209, 8388608], [256, 7526683265], [137, 8388608, 204, 7526683265], [100, 8589849273], [96, 8589849273], [221, 131072, 225, 262144, 229, 524288, 92, 8589849273], [233, 67108864, 68, 8589849273], [145, 16, 149, 128, 249, 8192, 165, 1048576, 169, 8, 173, 4194304, 84, 8589849273], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [104, 8589849273], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [269, 8192, 36, 1040183481], [269, 8192, 44, 1040183481], [248, 7526683265], [252, 7526683265], [69, 128, 77, 512], [69, 128, 77, 512], [285, 2097152, 289, 8388608], [216, 7526683265], [69, 128, 77, 512], [297, 2097152, 289, 8388608], [232, 7526683265], [108, 8589849273], [112, 8589849273], [116, 8589849273], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [305, 67108864, 64, 8589849273], [80, 8589849273], [221, 131072, 225, 262144, 229, 524288, 88, 8589849273], [309, 536870912, 313, 128, 317, 16777216, 321, 32768], [221, 131072, 333, 67108864, 225, 262144, 229, 524288, 341, 2097152, 144, 83755160], [145, 16, 149, 128, 165, 1048576, 169, 8, 349, 2097152, 173, 4194304], [221, 131072, 225, 262144, 229, 524288, 353, 8388608], [32, 1040183481], [357, 16384], [40, 1040183481], [240, 7526683265], [244, 7526683265], [212, 7526683265], [69, 128, 77, 512], [224, 10485760], [228, 7526683265], [76, 8589849273], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [196, 427851776], [192, 427851776], [369, 268435456, 373, 134217728], [164, 8589849273], [381, 32768], [317, 16777216, 385, 32768], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [397, 67108864, 401, 2097152], [124, 8589849273], [221, 131072, 225, 262144, 229, 524288, 140, 83755160], [136, 8589849273], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [409, 32768], [220, 10485760], [72, 8589849273], [188, 411074560], [184, 411074560], [417, 8388608, 172, 32768], [160, 8589849273], [156, 8589849273], [421, 32768], [221, 131072, 225, 262144, 229, 524288, 132, 69206016], [145, 16, 149, 128, 165, 1048576, 169, 8, 173, 4194304], [120, 8589849273], [221, 131072, 225, 262144, 229, 524288, 429, 2097152], [48, 1040183481], [433, 8388608, 168, 32768], [369, 268435456, 373, 134217728], [152, 8589849273], [221, 131072, 225, 262144, 229, 524288, 128, 69206016], [148, 8589849273], [369, 268435456, 373, 134217728], [180, 8421376], [176, 8421376]]
  goto_hash = {104 => {18 => 109}, 82 => {16 => 97}, 49 => {25 => 70}, 16 => {4 => 28}, 5 => {6 => 10}, 99 => {12 => 106}, 88 => {12 => 101}, 44 => {5 => 66}, 33 => {23 => 53}, 0 => {1 => 2}, 94 => {17 => 103}, 83 => {12 => 98}, 72 => {25 => 90}, 39 => {9 => 59}, 6 => {7 => 13, 8 => 12}, 45 => {5 => 68}, 23 => {22 => 35, 25 => 18}, 62 => {16 => 81, 19 => 82}, 40 => {12 => 61, 15 => 60}, 29 => {25 => 46}, 18 => {24 => 31}, 7 => {3 => 16, 4 => 15}, 79 => {18 => 94}, 13 => {8 => 26}, 63 => {13 => 84}, 52 => {25 => 73}, 41 => {12 => 63, 14 => 64}, 30 => {25 => 47}, 8 => {22 => 22, 25 => 18, 21 => 23}, 58 => {11 => 40, 12 => 38, 10 => 75}, 25 => {11 => 40, 12 => 38, 10 => 39}, 3 => {6 => 4, 2 => 5}, 108 => {18 => 110}, 64 => {12 => 86}, 20 => {25 => 32}, 48 => {25 => 69}, 4 => {20 => 9}, 76 => {11 => 40, 12 => 38, 10 => 91}, 43 => {12 => 65}, 32 => {23 => 50}, 21 => {25 => 33}, 10 => {20 => 24}}
  @@parse_table538472678 = ParseTable.new(productions,tokens,priorities,action_table,goto_hash,2,[
    :REDUCE,
    :SHIFT,
    :ACCEPT
  ])
  def Parse.rockit_grammars_parser
    GeneralizedLrParser.new(@@parse_table538472678)
  end
end

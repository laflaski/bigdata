va <- c(1,2,3); vb <- c(4,5,6); vc <- c(7,8,9);
# va;vb;vc;
a <- 4; b <- 3;
A <- rbind(va, vb, vc); B <- cbind(va,vb,vc);
A;B;
class(A);class(B);
attributes(A);attributes(B);

if(a>b){"a is larger than b"}
if(a>b){print("a is larger than b")}

if('a'>b){"a is larger than b"}
if('a'<b){"a is larger than b"}

if("a">"b"){"a is larger than b"}
if("a"<"b"){"a is larger than b"}

if(b > a){
  print("a is larger than b")
} else {
  print("b is not lager than b")
}

import std.stdio;
import tsv_utils.tsv_filter;

int main(string[] cmdArgs)
{
  string str = 
"abc\tdef\t123
ghi\tjkl\t456
mno\tpqr\t789";
  writeln(grep(str, ["--str-ne", "3:789"]));
  writeln("");
  writeln(grep(str, ["--gt", "3:400"]));
  return 0;
}
  

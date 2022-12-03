import std.stdio;
import tsv_utils.tsv_filter;

int main(string[] cmdArgs)
{
  string str = 
"abc\tdef\t123
ghi\tjkl\t456
mno\tpqr\t789";
  writeln("id not equal to 789");
  writeln(grep(str, ["--str-ne", "3:789"]));
  writeln("\nid greater than 400");
  writeln(grep(str, ["--gt", "3:400"]));
  writeln("\nFirst record with id of 123 (id is unique, so call grepFirst)");
  writeln(grepFirst(str, ["--str-eq", "3:123"]));
  writeln("\nFirst record with id of 729 (returns blanks since that id does not exist)");
  writeln(grepFirst(str, ["--str-eq", "3:729"]));
  return 0;
}
  

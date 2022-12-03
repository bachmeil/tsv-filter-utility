import std.stdio;
import tsv_utils.tsv_filter;

int main(string[] cmdArgs)
{
  string str = 
"abc\tdef\t123
ghi\tjkl\t456
mno\tpqr\t789";
  grep(str, ["--str-eq", "3:789"]);
  writeln("");
  grep(str, ["--gt", "3:400"]);
    //~ /* When running in DMD code coverage mode, turn on report merging. */
    //~ version(D_Coverage) version(DigitalMars)
    //~ {
        //~ import core.runtime : dmd_coverSetMerge;
        //~ dmd_coverSetMerge(true);
    //~ }

    //~ if (!r[0]) return r[1];
    //~ version(LDC_Profile)
    //~ {
        //~ import ldc.profile : resetAll;
        //~ resetAll();
    //~ }
    //~ try 
    //~ catch (Exception e)
    //~ {
        //~ stderr.writefln("Error [%s]: %s", cmdopt.programName, e.msg);
        //~ return 1;
    //~ }
    return 0;
}

void grep(string s, string[] options) {
  TsvFilterOptions cmdopt;
  string[] tmp = [""] ~ options;
  cmdopt.processArgs(tmp);
  tsvFilterCommand(s, cmdopt);
}
  

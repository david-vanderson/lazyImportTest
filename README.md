`zig build` produces this error:

```
dvanderson@Davids-Air lazyImportTest % zig build
/Users/dvanderson/apps/zig-aarch64-macos-0.17.0/lib/std/mem.zig:810:5: error: evaluation exceeded 1000 backwards branches
    for (a, b) |a_elem, b_elem| {
    ^~~
/Users/dvanderson/apps/zig-aarch64-macos-0.17.0/lib/std/mem.zig:810:5: note: use @setEvalBranchQuota() to raise the branch limit from 1000
/Users/dvanderson/apps/zig-aarch64-macos-0.17.0/lib/std/Build.zig:2046:29: note: called at comptime here
        if (comptime mem.eql(u8, decl_name, pkg_hash)) {
                     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
zig-pkg/wio-0.0.0-8xHrrzwbCAAalZblAgiMfH57mabsr9z7BMx-mYnUH5vL/build.zig:140:33: note: called inline here
                if (b.lazyImport(@This(), "translate_c")) |translate_c| {
                    ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
referenced by:
    runPackageScript [inlined]: /Users/dvanderson/apps/zig-aarch64-macos-0.17.0/lib/std/Build.zig:2145:50
    run: /Users/dvanderson/apps/zig-aarch64-macos-0.17.0/lib/std/Build.zig:1997:40
    8 reference(s) hidden; use '-freference-trace=10' to see all references
```

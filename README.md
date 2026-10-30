`zig build` produces this error:

```
dvanderson@Davids-Air lazyImportTest % ~/apps/zig18/zig build   
/Users/dvanderson/apps/zig-aarch64-macos-0.18.0-dev.738+ae9a8acc7/lib/std/mem.zig:810:5: error: evaluation exceeded 1000 backwards branches
    for (a, b) |a_elem, b_elem| {
    ^~~
/Users/dvanderson/apps/zig-aarch64-macos-0.18.0-dev.738+ae9a8acc7/lib/std/mem.zig:810:5: note: use @setEvalBranchQuota() to raise the branch limit from 1000
/Users/dvanderson/apps/zig-aarch64-macos-0.18.0-dev.738+ae9a8acc7/lib/std/Build.zig:2122:29: note: called at comptime here
        if (comptime mem.eql(u8, decl_name, pkg_hash)) {
                     ~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~
build.zig:11:25: note: called inline here
        if (b.lazyImport(@This(), "wio")) |_| {}
            ~~~~~~~~~~~~^~~~~~~~~~~~~~~~
referenced by:
    runPackageScript [inlined]: /Users/dvanderson/apps/zig-aarch64-macos-0.18.0-dev.738+ae9a8acc7/lib/std/Build.zig:2221:50
    main: /Users/dvanderson/apps/zig-aarch64-macos-0.18.0-dev.738+ae9a8acc7/lib/compiler/configurer.zig:138:29
    3 reference(s) hidden; use '-freference-trace=5' to see all references
```

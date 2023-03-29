fn main() {
    cc::Build::new()
        .include("c_src/game.h")
        .file("c_src/game.c")
        .compile("foo");
}

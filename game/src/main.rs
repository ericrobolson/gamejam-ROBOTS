use std::os::raw::c_void;

extern "C" {
    fn bar_function(x: i32) -> i32;
    fn game_new() -> *mut c_void;
    fn increment(x: *mut c_void) -> i32;
}

pub fn call() -> i32 {
    unsafe { bar_function(42) }
}

fn main() {
    println!("{:?}", call());

    unsafe {
        let game = game_new();
        println!("{:?}", game);
        println!("{:?}", increment(game));
        println!("{:?}", increment(game));
        println!("{:?}", increment(game));
        println!("{:?}", increment(game));
    }
}

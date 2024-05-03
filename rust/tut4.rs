// ** Jargon #0: Mutability

fn main() {
    let mut x: i8 = 5;
    x = 6;
    print!("The value of x is: {}", x);
}

// ** Jargon #1: Stack vs Heap

fn main() {
    stack_fn();
    heap_fn();
    update_str();
}

fn stack_fn() {
    let a: i8 = 6;
    let b: i8 = 7;
    let c: i8 = a + b;
    print!("the sum of {} and {} is {}", a, b, c);
}

fn heap_fn() {
    let s1: String = String::from("hello");
    let s2: String = String::from("world");
    let combined: String = format!("{} {}", s1, s2);
    print!("the combined function is: {}", combined);
}

fn update_str() {
    let mut s = String::from("Initial String");
    println!("before update: {}", s);
    print!(
        "the length: {}, capacity: {}, and pointer address: {:p} before update",
        s.len(),
        s.capacity(),
        s.as_ptr()
    );

    s.push_str(" and some additional string.");
    println!("after update: {}", s);
    print!(
        "the length: {}, capacity: {}, and pointer address: {:p} after update",
        s.len(),
        s.capacity(),
        s.as_ptr()
    );
}

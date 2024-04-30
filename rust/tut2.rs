/* simple variables in rust */

fn main() {
    let x: i8 = -5;
    let y: u8 = 5;
    let z: f32 = 5.01;

    print!("x: {}, y: {}, z: {}", x, y, z);
}

/* for loop + overflow condition explained */

fn main() {
    let mut num: i16 = 5;
    for _i in 0..10 {
        num += 1;
    }
    print!("Number: {}", num);
}

/* booleans */

fn main() {
    let is_male = false;
    let is_above_18 = true;

    if is_male {
        println!("you are a male");
    } else {
        println!("you are not a male");
    }
    if is_male && is_above_18 {
        println!("you are a legal male");
    }
}

/* Strings */

fn main() {
    let greeting: String = String::from("hello world!");
    println!("greeting: {}", greeting);

    let char1 = greeting.chars().nth(0);
    match char1 {
        Some(c) => println!("{}", c),
        None => println!("No character at index 0"),
    }
    print!("{}", char1.unwrap_or(' '));
}

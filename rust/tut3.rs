// ** conditionals.

fn main() {
    let is_even: bool = true;
    if is_even {
        println!("It is an even number");
    } else {
        println!("It is an odd number");
    }
}

// ** loops.

fn main() {
    for i in 0..11 {
        print!("{}", i);
    }
}

// ** to write the first word in the sentence.

fn main() {
    let sentence: String = String::from("my name is aaranyak");
    let first_word: String = get_first_word(sentence);
    print!("First word is: {}", first_word);
}

fn get_first_word(sentence: String) -> String {
    let mut ans: String = String::from("");
    for char in sentence.chars() {
        ans.push_str(char.to_string().as_str());
        if char == ' ' {
            break;
        }
    }
    return ans;
}

// ** functions

fn main() {
    let a: i8 = 3;
    let b: i8 = 4;
    let c: i8 = sum(a, b);
    print!("sum of {} and {} is: {}", a, b, c);
}

fn sum(a: i8, b: i8) -> i8 {
    return a + b;
}

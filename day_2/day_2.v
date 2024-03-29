fn main() {
    mut input := [
        1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,13,19,1,9,19,23,1,6,23,27,2,27,9,31,2,6,31,35,1,5,35,39,1,10,39,43,1,43,
        13,47,1,47,9,51,1,51,9,55,1,55,9,59,2,9,59,63,2,9,63,67,1,5,67,71,2,13,71,75,1,6,75,79,1,10,79,83,2,6,83,87,1,
        87,5,91,1,91,9,95,1,95,10,99,2,9,99,103,1,5,103,107,1,5,107,111,2,111,10,115,1,6,115,119,2,10,119,123,1,6,123,
        127,1,127,5,131,2,9,131,135,1,5,135,139,1,139,10,143,1,143,2,147,1,147,5,0,99,2,0,14,0
    ]
    
    println(
        'DAY 2 - Advent of Code <adventofcode.com>\n
        Input:\n
        $input\n
        ${intcode(mut input)}'
    ) 
}
/**
* TASK I
*/
fn intcode(input mut []int) []int {
    for i := 0; i < input.len; i += 4 {
        println("Current value of i: $i")
        mut r1 := 0
        mut r2 := 0
        mut result_index := 0
        
        if i + 3 < input.len {
            r1 = input[i + 1]
            r2 = input[i + 2]
            result_index = input[i + 3]
        }
        // check opcode
        match input[i] {
            1 {
                println('Setting Value of input[$i]: ${input[result_index]}')
                input[result_index] = input[r1] + input[r2]
            }
            2 {
            
                println('Setting Value of input[$i]: ${input[i+3]}')
                input[result_index] = input[r1] * input[r2]
            }
            99 {
                println('Program finished successfully')
                return input
                
            }
            else {
                panic('Something went wrong here')
            }
        }
    }
    return input
}

/**
* TASK II
*/

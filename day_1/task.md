# Day 1 - Advent of Code

## Description

### Part One

The Elves quickly load you into a spacecraft and prepare to launch.

At the first Go / No Go poll, every Elf is Go until the Fuel Counter-Upper. They haven't determined the amount of fuel required yet.

Fuel required to launch a given module is based on its mass.
Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.

### Part Two

During the second Go / No Go poll, the Elf in charge of the Rocket Equation Double-Checker stops the launch sequence. Apparently, you forgot to include additional fuel for the fuel you just added.

Fuel itself requires fuel just like a module - take its mass, divide by three, round down, and subtract 2. However, that fuel also requires fuel, and that fuel requires fuel, and so on. Any mass that would require negative fuel should instead be treated as if it requires zero fuel; the remaining mass, if any, is instead handled by wishing really hard, which has no mass and is outside the scope of this calculation.

So, for each module mass, calculate its fuel and add it to the total. Then, treat the fuel amount you just calculated as the input mass and repeat the process, continuing until a fuel requirement is zero or negative.

## TL;DR

### One

Calculate the sum of fuel required for each module

`fuel_per_module := (mass_of_module / 3) - 2` where result of division is an integer.

### Two

Calculate the sum of fuel needed for the fuel and the fuel of the fuel and so on.
**If** the required amount of fuel `x` ≠ 0
=> calculate required fuel and add it to fuel
**Else**
=> return the value of fuel.

**#fuelception**

# Day 1 - Advent of Code

## Description

The Elves quickly load you into a spacecraft and prepare to launch.

At the first Go / No Go poll, every Elf is Go until the Fuel Counter-Upper. They haven't determined the amount of fuel required yet.

Fuel required to launch a given module is based on its mass.
Specifically, to find the fuel required for a module, take its mass, divide by three, round down, and subtract 2.

## TL;DR

Calculate the sum of fuel required for each module

`fuel_per_module := (mass_of_module / 3) - 2` where result of division is an integer.

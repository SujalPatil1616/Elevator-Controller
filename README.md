# Elevator Controller 

## Description

This project implements a simple Elevator Controller using Verilog HDL. The controller operates a 4-floor elevator and moves it to the requested floor. The elevator can move upward or downward depending on the destination floor and stops automatically when it reaches the requested floor.

---

## Working

1. The elevator starts at Floor 0 after reset.
2. A user selects a destination using `request_floor`.
3. If the requested floor is higher than the current floor, the elevator moves up.
4. If the requested floor is lower than the current floor, the elevator moves down.
5. The elevator updates its current floor one step at a time.
6. When the destination floor is reached, the elevator stops.

---

## Inputs

- `clk` : System clock
- `rst` : Reset signal
- `request_floor[1:0]` : Destination floor selected by the user

---

## Outputs

- `current_floor[1:0]` : Current floor of the elevator
- `moving_up` : Indicates upward movement
- `moving_down` : Indicates downward movement

---

## Test Scenario

### Request 1
Current Floor = 0

Requested Floor = 3

Movement:

0 → 1 → 2 → 3

### Request 2
Current Floor = 3

Requested Floor = 1

Movement:

3 → 2 → 1

### Request 3
Current Floor = 1

Requested Floor = 2

Movement:

1 → 2

---

## Tools Used

- Verilog HDL
- EDA Playground
- Icarus Verilog
- EPWave

---

## Files

- `elevator_controller.v` : Elevator Controller design
- `elevator_controller_tb.v` : Testbench for simulation
- `elevator_controller_waveform.png` : Simulation waveform

---

## Waveform

<img src="elevator_waveform.png" alt="Elevator Controller Waveform" width="1000">

---

## Result

The Elevator Controller was successfully simulated and verified using waveform analysis. The elevator correctly moved between floors according to the requested destination and stopped when the target floor was reached.

---

## Real-Life Applications

- Apartment Elevators
- Shopping Mall Elevators
- Hospital Elevators
- Office Building Lifts
- Smart Building Automation Systems

---

## Author

Sujal Patil

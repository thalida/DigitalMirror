import RPi.GPIO as GPIO
import time

import pyautogui as key

# Set up gpio pins
GPIO.setmode(GPIO.BCM)
pins = [(17, 'a'), (27, 'b'), (22, 'c'), (23, 'd'), (24, 'e')]

btn_list = []

for pin in pins:
    btn_list.append({'pin': pin[0], 'output': pin[1], 'prev_input': 1})
    GPIO.setup(pin[0], GPIO.IN)

while True:
    for btn in btn_list:
        input = GPIO.input(btn['pin'])
        if (not btn['prev_input']) and input:
            key.typewrite(btn['output'])
        btn['prev_input'] = input
        time.sleep(0.05)

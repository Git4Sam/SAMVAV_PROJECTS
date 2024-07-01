import hashlib

h_pw = hashlib.sha256()

# b prefix converts your string/integer/float/special_characters into byte form

h_pw.update(b"TypeYourPa$$wordHere1234")

# hex digest function converts the bytes into hexadecimals

print(h_pw.hexdigest())
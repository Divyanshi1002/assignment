import sqlite3

con = sqlite3.connect("service_ops.db")

with open("service_ops.sql", "w") as f:
    for line in con.iterdump():
        f.write(f"{line}\n")

con.close()

print("SQL dump saved as service_ops.sql")

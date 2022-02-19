# Mini-Project
Authentication By Encrypted Negative Password


Secure password storage is a vital aspect in systems based on password authentication, which is still the most widely used authentication technique, despite its some security flaws.A Password authentication framework is designed for secure password storage and could be easily integrated into existing authentication systems.

    In this framework, first, the received plain password from a client is hashed through a cryptographic hash function (e.g., SHA-256).Then, the hashed password is converted into a negative password. Finally, the negative password is encrypted into an Encrypted Negative Password (abbreviated as ENP) using a symmetric-key
algorithm (e.g., AES).The cryptographic hash function and symmetric encryption make it difficult to crack passwords from ENPs. Moreover, ENPs makes precomputation
attacks (e.g., lookup table attack and rainbow table attack) infeasible. It is worth mentioning that the ENP does not introduce extra elements (e.g.,salt); besides this, the ENP could still resist precomputation attacks. Most importantly, the ENP is the first password protection scheme that combines the cryptographic hash function,
the negative password and the symmetric-key algorithm, without the need for additional information except the plain password.

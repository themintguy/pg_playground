### Best way for schema artichect
Good schema architecture means you first choose the main tables in your system, then give them simple clear names and a primary key. You connect tables using foreign keys and keep every column small and focused (one column = one value). You use the correct data types, avoid repeating the same data, and only denormalize a little if you need faster speed. Add indexes to columns you search a lot, use a status field instead of many booleans, and always add created_at and updated_at so your data stays clean, organized, and easy to grow in the future.

### what are 1$,2$,3$ in backend + postgres
$1 → first value you pass

$2 → second value you pass

$3 → third value you pass

```js
const result = await pool.query(
  "INSERT INTO users (username, email, age) VALUES ($1, $2, $3)",
  ["Alesh", "alesh@gmail.com", 18]
);
```
means $1 is for alesh from the array and so on

why we use them so we should aviod SQL injection

$1, $2, $3 are just positions for values you send from backend to your SQL. $1 is the first value, $2 is the second, $3 is the third.

### Parameterization
Parameterization means writing SQL queries using placeholders (like $1, $2, $3) instead of putting the real values directly inside the query.

### What is venv?
venv means virtual environment in Python. It is a separate folder that contains its own Python version and its own packages, so your project doesn’t mix with other Python projects.

This makes your backend safer and cleaner because the database handles the values separately, so no one can break your query with dangerous input. It also makes your code easier to read and reuse.

FastAPI uses venv because Python doesn’t isolate packages by itself.

Express.js doesn’t need venv because Node.js already isolates packages using node_modules.

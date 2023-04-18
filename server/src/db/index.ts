import { Pool } from 'pg';

const pool = new Pool({
	host: "127.0.0.1",
	port: 5432,
	database: "postgres",
	user: "postgres",
	password: "admin",
});

export default {
    // rome-ignore lint/suspicious/noExplicitAny: <explanation>
    query: (queryText: string, values?: any) => pool.query(queryText, values)
}
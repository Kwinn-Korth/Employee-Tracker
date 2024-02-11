const mysql = require('mysql2/promise'); // Import mysql module
const fs = require('fs').promises;
require('dotenv').config();

async function setupDatabase() {
    try {
        const connection = await mysql.createConnection({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASS,
            database: process.env.DB_DATABASE
        });

        // Read schema.sql
        const schemaSql = await fs.readFile('db/schema.sql', 'utf-8');

        // Split the content of schemaSql by semicolon to get individual SQL statements
        const sqlStatements = schemaSql.split(';').filter(statement => statement.trim() !== '');

        // Execute each SQL statement sequentially
        for (const sqlStatement of sqlStatements) {
            await connection.query(sqlStatement);
        }

        console.log('Database schema setup completed.');
        connection.end();
    } catch (error) {
        console.error('Error setting up database schema:', error);
    }
}

setupDatabase();

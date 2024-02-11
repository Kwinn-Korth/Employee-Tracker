const mysql = require('mysql2/promise');
const fs = require('fs').promises;

require('dotenv').config();

async function seedDatabase() {
    try {
        const connection = await mysql.createConnection({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASS,
            database: process.env.DB_DATABASE
        });

        // Read seeds SQL file
        const seedsSql = await fs.readFile('db/seeds.sql', 'utf-8');

        // Execute seeds SQL
        await connection.query(seedsSql);

        console.log('Database seeded successfully.');
        connection.end();
    } catch (error) {
        console.error('Error seeding database:', error);
    }
}

seedDatabase();

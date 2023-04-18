import { Expense } from "../models/expense";
import db from '../db';

export const expensesService = {
    async getExpenses(): Promise<Expense[]> {
        const { rows } = await db.query('SELECT * FROM expenses');
        return rows as Expense[];
    }
}